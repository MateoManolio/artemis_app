import 'package:flutter/material.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';

class TermsDialog extends StatelessWidget {
  const TermsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context)!;

    return Dialog(
      insetPadding: const EdgeInsets.all(AppSpacing.lg),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppBorderRadius.lg),
      ),
      child: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(AppBorderRadius.lg),
                topRight: Radius.circular(AppBorderRadius.lg),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.description_outlined,
                  color: colorScheme.onPrimaryContainer,
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Text(
                    l10n.termsOfService,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.close,
                    color: colorScheme.onPrimaryContainer,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
          ),
          // Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Updated: November 4, 2025',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xl),

                  _buildSection(
                    context,
                    '1. Acceptance of Terms',
                    'By accessing and using Artemis Article Explorer, you accept and agree to be bound by these Terms of Service.',
                  ),

                  _buildSection(
                    context,
                    '2. Description of Service',
                    'Artemis provides access to scientific publications through the OpenAlex API for research and academic purposes.',
                  ),

                  _buildSection(
                    context,
                    '3. User Accounts',
                    'You may create an account using Google Sign-In. You are responsible for maintaining the confidentiality of your account credentials.',
                  ),

                  _buildSection(
                    context,
                    '4. Guest Mode',
                    'The App offers a guest mode with limited access to features without creating an account.',
                  ),

                  _buildSection(
                    context,
                    '5. User Conduct',
                    'You agree to use the App only for lawful purposes. You must not:\n\n• Violate any applicable laws\n• Interfere with the App\'s functionality\n• Access unauthorized areas\n• Transmit malicious software\n• Scrape data using automated means',
                  ),

                  _buildSection(
                    context,
                    '6. Intellectual Property',
                    'The App and its content are protected by intellectual property laws. Scientific content is subject to original publishers\' licenses.',
                  ),

                  _buildSection(
                    context,
                    '7. Third-Party Services',
                    'The App uses:\n\n• OpenAlex API for article data\n• Google Sign-In for authentication\n• Firebase for backend services\n\nUse is subject to their respective terms.',
                  ),

                  _buildSection(
                    context,
                    '8. Disclaimer of Warranties',
                    'The App is provided "as is" without warranties. We do not guarantee uninterrupted, secure, or error-free service.',
                  ),

                  _buildSection(
                    context,
                    '9. Limitation of Liability',
                    'We shall not be liable for indirect, incidental, or consequential damages arising from your use of the App.',
                  ),

                  _buildSection(
                    context,
                    '10. Content Accuracy',
                    'We make no warranties about the accuracy of content. Users should verify information independently.',
                  ),

                  _buildSection(
                    context,
                    '11. Changes to Terms',
                    'We may modify these Terms at any time. Material changes require 30 days\' notice.',
                  ),

                  _buildSection(
                    context,
                    '12. Termination',
                    'We may terminate your account immediately for any reason, including breach of Terms.',
                  ),

                  _buildSection(
                    context,
                    '13. Academic Use',
                    'This App is for academic purposes. Follow proper citation practices and respect copyright laws.',
                  ),

                  _buildSection(
                    context,
                    '14. Governing Law',
                    'These Terms are governed by applicable laws without regard to conflict of law provisions.',
                  ),

                  const SizedBox(height: AppSpacing.lg),

                  Center(
                    child: Text(
                      'By using Artemis, you acknowledge that you have read and understood these Terms.',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.primary,
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            content,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
