// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toogle_favorite_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(toggleFavorite)
const toggleFavoriteProvider = ToggleFavoriteFamily._();

final class ToggleFavoriteProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const ToggleFavoriteProvider._({
    required ToggleFavoriteFamily super.from,
    required Article super.argument,
  }) : super(
         retry: null,
         name: r'toggleFavoriteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$toggleFavoriteHash();

  @override
  String toString() {
    return r'toggleFavoriteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as Article;
    return toggleFavorite(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ToggleFavoriteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$toggleFavoriteHash() => r'21b3f17b91d722bb49740649378f429d2888f041';

final class ToggleFavoriteFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, Article> {
  const ToggleFavoriteFamily._()
    : super(
        retry: null,
        name: r'toggleFavoriteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ToggleFavoriteProvider call(Article article) =>
      ToggleFavoriteProvider._(argument: article, from: this);

  @override
  String toString() => r'toggleFavoriteProvider';
}
