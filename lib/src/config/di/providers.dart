import 'package:artemis_app/src/core/network/dio_client.dart';
import 'package:artemis_app/src/data/datasource/contracts/article_api_datasource.dart';
import 'package:artemis_app/src/data/datasource/local/articles_dao.dart';
import 'package:artemis_app/src/data/datasource/remote/firebase_auth_service.dart';
import 'package:artemis_app/src/data/datasource/remote/openalex_api_service.dart';
import 'package:artemis_app/src/data/repository/article_repository_impl.dart';
import 'package:artemis_app/src/data/repository/auth_repository_impl.dart';
import 'package:artemis_app/src/domain/contracts/article_repository.dart';
import 'package:artemis_app/src/domain/contracts/auth_repository.dart';
import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';
import 'package:artemis_app/src/domain/usecase/get_all_favorites_usecase.dart';
import 'package:artemis_app/src/domain/usecase/get_articles_details_usecase.dart';
import 'package:artemis_app/src/domain/usecase/get_articles_usecase.dart';
import 'package:artemis_app/src/domain/usecase/get_autocomplete_articles_usecase.dart';
import 'package:artemis_app/src/domain/usecase/get_random_article_usecase.dart';
import 'package:artemis_app/src/domain/usecase/observe_auth_state_usecase.dart';
import 'package:artemis_app/src/domain/usecase/search_favorites_usecase.dart';
import 'package:artemis_app/src/domain/usecase/sign_out_usecase.dart';
import 'package:artemis_app/src/domain/usecase/sign_in_with_google_usecase.dart';
import 'package:artemis_app/src/domain/usecase/toggle_favorite_usecase.dart';
import 'package:artemis_app/src/data/repository/favorites_repository_impl.dart';
import 'package:artemis_app/src/data/datasource/contracts/db_datasource.dart';
import 'package:artemis_app/src/data/datasource/local/user_local_service.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:isar_community/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

// ============================================================================
// CORE - Network & Infrastructure
// ============================================================================

@Riverpod(keepAlive: true)
DioClient openAlexDioClient(Ref ref) => DioClient(
  baseUrl: 'https://api.openalex.org',
  timeout: Duration(seconds: 30),
);

@Riverpod(keepAlive: true)
Isar isar(Ref ref) {
  throw UnimplementedError('Isar debe ser inicializado en main()');
}

// ============================================================================
// AUTH - Datasources, Repositories
// ============================================================================

@Riverpod(keepAlive: true)
FirebaseAuthService firebaseAuthService(Ref ref) => FirebaseAuthService(
  auth: firebase_auth.FirebaseAuth.instance,
  google: GoogleSignIn(scopes: const ['email']),
);

@Riverpod(keepAlive: true)
IAuthRepository authRepository(Ref ref) => AuthRepositoryImpl(
  ref.watch(firebaseAuthServiceProvider),
  ref.watch(userLocalServiceProvider),
);

// ============================================================================
// UseCases
// ============================================================================

@riverpod
SignInWithGoogleUsecase signInWithGoogleUsecase(Ref ref) =>
    SignInWithGoogleUsecase(ref.watch(authRepositoryProvider));

@riverpod
SignOutUsecase signOutUsecase(Ref ref) =>
    SignOutUsecase(ref.watch(authRepositoryProvider));

@riverpod
ObserveAuthStateUsecase observeAuthStateUsecase(Ref ref) =>
    ObserveAuthStateUsecase(ref.watch(authRepositoryProvider));

@riverpod
GetArticlesUsecase getArticlesUsecase(Ref ref) =>
    GetArticlesUsecase(ref.watch(articleRepositoryProvider));

@riverpod
GetArticlesDetailsUsecase getArticlesDetailsUsecase(Ref ref) =>
    GetArticlesDetailsUsecase(ref.watch(articleRepositoryProvider));

@riverpod
GetAutocompletedArticlesUsecase getAutocompleteArticlesUsecase(Ref ref) =>
    GetAutocompletedArticlesUsecase(ref.watch(articleRepositoryProvider));

@riverpod
GetRandomArticleUsecase getRandomArticleUsecase(Ref ref) =>
    GetRandomArticleUsecase(ref.watch(articleRepositoryProvider));

@riverpod
GetAllFavoritesUsecase getAllFavoritesUsecase(Ref ref) =>
    GetAllFavoritesUsecase(ref.watch(favoritesRepositoryProvider));

@riverpod
ToggleFavoriteUsecase toggleFavoriteUsecase(Ref ref) =>
    ToggleFavoriteUsecase(ref.watch(favoritesRepositoryProvider));

@riverpod
SearchFavoritesUsecase searchFavoritesUsecase(Ref ref) =>
    SearchFavoritesUsecase();

// ============================================================================
// ARTICLES - Datasources, Repositories
// ============================================================================

@Riverpod(keepAlive: true)
IArticleApiDatasource articleApiDatasource(Ref ref) =>
    OpenalexApiService(client: ref.watch(openAlexDioClientProvider));

@Riverpod(keepAlive: true)
IArticleRepository articleRepository(Ref ref) =>
    ArticleRepositoryImpl(service: ref.watch(articleApiDatasourceProvider));

// ============================================================================
// FAVORITES - Datasources, Repositories & UseCases
// ============================================================================

@Riverpod(keepAlive: true)
DbDataSource dbDataSource(Ref ref) => ArticlesDao(ref.watch(isarProvider));

@Riverpod(keepAlive: true)
IFavoritesRepository favoritesRepository(Ref ref) =>
    FavoritesRepositoryImpl(dbDataSource: ref.watch(dbDataSourceProvider));

// ============================================================================
// USER LOCAL STORAGE
// ============================================================================

@Riverpod(keepAlive: true)
UserLocalService userLocalService(Ref ref) {
  final isar = ref.watch(isarProvider);
  return UserLocalService(isar);
}
