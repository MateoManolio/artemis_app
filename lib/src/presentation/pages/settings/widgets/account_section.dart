import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:artemis_app/src/presentation/providers/user_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'setting_tile.dart';

class AccountSection extends ConsumerWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    final isGuest = user?.uid == 'guest' || user == null;

    return Column(
      children: [
        Card(
          color: colorScheme.surfaceContainer,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: colorScheme.primaryContainer,
                  child: user?.photoUrl != null
                      ? ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: user!.photoUrl!,
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Center(
                              child: CircularProgressIndicator(
                                color: colorScheme.primary,
                              ),
                            ),
                            errorWidget: (context, url, error) => Icon(
                              Icons.person,
                              size: 35,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                        )
                      : Icon(
                          Icons.person,
                          size: 35,
                          color: colorScheme.onPrimaryContainer,
                        ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isGuest 
                            ? 'Guest User' 
                            : user.displayName ?? user.email ?? 'Guest',
                        style: theme.textTheme.titleLarge?.copyWith(
                          color: colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        isGuest 
                            ? 'Sign in to access your account' 
                            : user.email ?? 'No email',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        
        const SizedBox(height: 16),
        
        if (isGuest)
          SettingTile(
            icon: Icons.login,
            title: 'Sign In',
            subtitle: 'Sign in with your account',
            onTap: () {
              ref.read(userProvider.notifier).deleteUser();
              context.go('/login');
            },
          )
        else ...[
          SettingTile(
            icon: Icons.edit_outlined,
            title: 'Edit Profile',
            subtitle: 'Update your profile information',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Edit profile feature coming soon'),
              ),
            );
            },
          ),
          
          const SizedBox(height: 8),
          
          SettingTile(
            icon: Icons.logout_outlined,
            title: 'Sign Out',
            subtitle: 'Sign out of your account',
            onTap: () async {
              await ref.read(userProvider.notifier).signOut();
              if (context.mounted) {
                context.go('/login');
              }
            },
          ),
        ],
      ],
    );
  }
}

