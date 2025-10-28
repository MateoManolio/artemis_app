import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_profile_provider.g.dart';

@riverpod
class EditProfile extends _$EditProfile {
  @override
  bool build() => false;

  Future<void> updateProfile({
    String? displayName,
    String? email,
  }) async {
    state = true;
    try {
      // TODO: Implementar actualización de perfil en Firebase
      // Por ahora solo simulamos un delay
      await Future.delayed(const Duration(seconds: 1));
      
      // Actualizar el estado del usuario
      // ref.read(userProvider.notifier).updateDisplayName(displayName);
      
      state = false;
    } catch (e) {
      state = false;
      rethrow;
    }
  }
}

