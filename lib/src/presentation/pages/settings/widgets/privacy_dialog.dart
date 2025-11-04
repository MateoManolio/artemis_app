import 'package:flutter/material.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/config/theme/app_theme.dart';

class PrivacyDialog extends StatelessWidget {
  const PrivacyDialog({super.key});

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
                  Icons.privacy_tip_outlined,
                  color: colorScheme.onPrimaryContainer,
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Text(
                    l10n.privacyPolicy,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close, color: colorScheme.onPrimaryContainer),
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
                  
                  Text(
                    'Your privacy is important to us. This Privacy Policy explains how Artemis collects, uses, and protects your personal information.',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurface,
                      height: 1.5,
                    ),
                  ),
                  
                  const SizedBox(height: AppSpacing.xl),
                  
                  _buildSection(
                    context,
                    '1. Information We Collect',
                    'We collect information you provide and information automatically collected when you use the App.',
                  ),
                  
                  _buildSubsection(
                    context,
                    'Information You Provide',
                    '• Account info (name, email, profile picture via Google)\n• Reading preferences (theme, language, font size)\n• Favorites and saved articles\n• Search queries and articles viewed',
                  ),
                  
                  _buildSubsection(
                    context,
                    'Automatically Collected',
                    '• Device information and identifiers\n• Log data (IP address, access times)\n• Analytics and usage patterns',
                  ),
                  
                  _buildSection(
                    context,
                    '2. How We Use Your Information',
                    'We use your information to:\n\n• Provide and improve the App\n• Personalize your experience\n• Manage your profile and preferences\n• Analyze usage patterns\n• Ensure security\n• Communicate updates',
                  ),
                  
                  _buildSection(
                    context,
                    '3. Information Sharing',
                    'We do not sell your data. We share information only with:',
                  ),
                  
                  _buildSubsection(
                    context,
                    'Service Providers',
                    '• Google (Authentication)\n• Firebase (Backend infrastructure)\n• OpenAlex (Article queries only)',
                  ),
                  
                  _buildSubsection(
                    context,
                    'Legal Requirements',
                    'We may disclose information if required by law or to respond to valid legal requests.',
                  ),
                  
                  _buildSection(
                    context,
                    '4. Data Security',
                    'We implement security measures:\n\n• Encrypted data transmission (SSL/TLS)\n• Secure authentication via Google\n• Local storage using Isar database\n• Regular security reviews\n\nNo internet transmission is 100% secure.',
                  ),
                  
                  _buildSection(
                    context,
                    '5. Data Retention',
                    'We retain data as long as necessary to provide services. You can delete your account anytime.',
                  ),
                  
                  _buildSection(
                    context,
                    '6. Your Rights',
                    'You have rights to:\n\n• Access and update your information\n• Request data deletion\n• Export your data\n• Opt-out of analytics',
                  ),
                  
                  _buildSection(
                    context,
                    '7. Guest Mode',
                    'In guest mode:\n\n• No account information collected\n• Preferences stored locally only\n• No data synchronization\n• Clearing app data removes all info',
                  ),
                  
                  _buildSection(
                    context,
                    '8. Third-Party Services',
                    'Third-party privacy policies:\n\n• Google: policies.google.com/privacy\n• Firebase: firebase.google.com/support/privacy\n• OpenAlex: openalex.org/privacy',
                  ),
                  
                  _buildSection(
                    context,
                    '9. Children\'s Privacy',
                    'The App is for users aged 13+. We do not knowingly collect data from children under 13.',
                  ),
                  
                  _buildSection(
                    context,
                    '10. International Transfers',
                    'Your data may be processed in countries with different data protection laws. By using the App, you consent to these transfers.',
                  ),
                  
                  _buildSection(
                    context,
                    '11. GDPR Rights (EU)',
                    'EEA users have additional rights:\n\n• Right to access\n• Right to rectification\n• Right to erasure\n• Right to restrict processing\n• Right to data portability\n• Right to object',
                  ),
                  
                  _buildSection(
                    context,
                    '12. CCPA Rights (California)',
                    'California residents have rights under CCPA:\n\n• Know what data is collected\n• Know if data is sold (we don\'t sell data)\n• Request deletion\n• Non-discrimination for exercising rights',
                  ),
                  
                  _buildSection(
                    context,
                    '13. Changes to Policy',
                    'We may update this policy. Material changes will be notified through the App with 30 days\' notice.',
                  ),
                  
                  _buildSection(
                    context,
                    '14. Contact Us',
                    'For questions about this policy, contact us through the App support channels.',
                  ),
                  
                  const SizedBox(height: AppSpacing.lg),
                  
                  Center(
                    child: Text(
                      'By using Artemis, you acknowledge that you have read this Privacy Policy.',
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

  Widget _buildSubsection(BuildContext context, String title, String content) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.md, left: AppSpacing.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurface,
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

