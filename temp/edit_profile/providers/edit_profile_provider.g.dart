// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EditProfile)
const editProfileProvider = EditProfileProvider._();

final class EditProfileProvider extends $NotifierProvider<EditProfile, bool> {
  const EditProfileProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editProfileProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editProfileHash();

  @$internal
  @override
  EditProfile create() => EditProfile();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$editProfileHash() => r'694944b186400d6dc47bdc89c6247c4e541d28b8';

abstract class _$EditProfile extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
