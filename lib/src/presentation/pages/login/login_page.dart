import 'package:artemis_app/src/core/error/auth_exception.dart';
import 'package:artemis_app/src/presentation/pages/login/providers/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';
import 'package:artemis_app/src/presentation/pages/home/home_page.dart';
import 'widgets/welcome_avatar.dart';
import 'widgets/welcome_text.dart';
import 'widgets/google_sign_in_button.dart';
import 'widgets/skip_button.dart';

class LoginPage extends ConsumerWidget {
  static const String routeName = '/login';

  const LoginPage({super.key});

  Future<void> _signInWithGoogle(BuildContext context, WidgetRef ref) async {
    try {
      await ref.read(loginProviderProvider.notifier).signInWithGoogle();

      if (context.mounted) {
        context.go(HomePage.routeName);
      }
    } on AuthCancelledException {
      // User cancelled - no need to show error, just silently return
      return;
    } on AuthException catch (e) {
      // Handle specific auth errors
      if (context.mounted) {
        final l10n = AppLocalizations.of(context)!;
        final colorScheme = Theme.of(context).colorScheme;
        String errorMessage;
        
        if (e is NoGoogleAccountException) {
          errorMessage = l10n.errorNoGoogleAccount;
        } else if (e is AuthNetworkException) {
          errorMessage = l10n.errorNetwork;
        } else if (e is AuthInvalidTokenException) {
          errorMessage = l10n.errorInvalidToken;
        } else {
          errorMessage = l10n.errorLogin(e.message);
        }
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMessage),
            backgroundColor: colorScheme.error,
            duration: const Duration(seconds: 4),
          ),
        );
      }
    } catch (e) {
      // Handle generic errors
      if (context.mounted) {
        final l10n = AppLocalizations.of(context)!;
        final colorScheme = Theme.of(context).colorScheme;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.errorLogin(e.toString())),
            backgroundColor: colorScheme.error,
            duration: const Duration(seconds: 4),
          ),
        );
      }
    }
  }

  Future<void> _skipLogin(BuildContext context, WidgetRef ref) async {
    ref.read(loginProviderProvider.notifier).signInAsGuest();
    // Navigate to home as guest
    if (context.mounted) {
      context.go(HomePage.routeName);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
          child: Column(
            children: [
              const Spacer(flex: 2),

              const WelcomeAvatar(),

              const SizedBox(height: AppSpacing.xxxl),

              const WelcomeText(),

              const SizedBox(height: AppSpacing.xxxl),

              GoogleSignInButton(
                onPressed: () => _signInWithGoogle(context, ref),
              ),

              const Spacer(flex: 2),

              SkipButton(onPressed: () => _skipLogin(context, ref)),

              const SizedBox(height: AppSpacing.xxxl),
            ],
          ),
        ),
      ),
    );
  }
}
