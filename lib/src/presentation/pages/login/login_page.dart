import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'widgets/welcome_avatar.dart';
import 'widgets/welcome_text.dart';
import 'widgets/google_sign_in_button.dart';
import 'widgets/skip_button.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = '/login';
  const LoginPage({super.key});

  Future<void> _signInWithGoogle() async {
    // TODO: Implement Firebase Auth Google Sign In
    // Example:
    // final authService = FirebaseAuth.instance;
    // final googleProvider = GoogleAuthProvider();
    // await authService.signInWithPopup(googleProvider);
    
    print('Sign in with Google - To be implemented');
  }

  Future<void> _skipLogin() async {
    // TODO: Handle guest mode or skip authentication
    print('Skip login - To be implemented');
  }

  @override
  Widget build(BuildContext context) {
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
                onPressed: () async {
                  await _signInWithGoogle();
                },
              ),
              
              const Spacer(flex: 2),
              
              SkipButton(
                onPressed: () async {
                  await _skipLogin();
                  // Navigate to home as guest
                  if (context.mounted) {
                    context.go('/home');
                  }
                },
              ),
              
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}