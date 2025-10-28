import 'package:artemis_app/src/presentation/pages/login/providers/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
      // Navigate to home on successful login
      if (context.mounted) {
        context.go('/home');
      }
    } catch (e) {
      // Handle error
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _skipLogin(BuildContext context, WidgetRef ref) async {
    ref.read(loginProviderProvider.notifier).signInAsGuest();
    // Navigate to home as guest
    if (context.mounted) {
      context.go('/home');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(flex: 2),
              
              const WelcomeAvatar(),
              
              const SizedBox(height: 40),
              
              const WelcomeText(),
              
              const SizedBox(height: 48),
              
              GoogleSignInButton(
                onPressed: () => _signInWithGoogle(context, ref),
              ),
              
              const Spacer(flex: 2),
              
              SkipButton(
                onPressed: () => _skipLogin(context, ref),
              ),
              
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}