import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:artemis_app/src/presentation/providers/user_provider.dart';

class ProfileImagePicker extends ConsumerWidget {
  const ProfileImagePicker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: GestureDetector(
        onTap: () {
          // TODO: Implementar selección de imagen
          // Por ahora solo mostramos el avatar
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: colorScheme.primaryContainer,
              child: user?.photoUrl != null
                  ? ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: user!.photoUrl!,
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Center(
                          child: CircularProgressIndicator(
                            color: colorScheme.primary,
                          ),
                        ),
                        errorWidget: (context, url, error) => Icon(
                          Icons.person,
                          size: 60,
                          color: colorScheme.onPrimaryContainer,
                        ),
                      ),
                    )
                  : Icon(
                      Icons.person,
                      size: 60,
                      color: colorScheme.onPrimaryContainer,
                    ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: colorScheme.surface,
                    width: 3,
                  ),
                ),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.camera_alt,
                  size: 20,
                  color: colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

