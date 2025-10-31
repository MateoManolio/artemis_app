// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_favorites_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getFavorites)
const getFavoritesProvider = GetFavoritesProvider._();

final class GetFavoritesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Article>>,
          List<Article>,
          FutureOr<List<Article>>
        >
    with $FutureModifier<List<Article>>, $FutureProvider<List<Article>> {
  const GetFavoritesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getFavoritesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getFavoritesHash();

  @$internal
  @override
  $FutureProviderElement<List<Article>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Article>> create(Ref ref) {
    return getFavorites(ref);
  }
}

String _$getFavoritesHash() => r'c8033e1427e932426d867e788dbd9aa117096a71';
