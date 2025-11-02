import 'package:artemis_app/src/data/datasource/contracts/article_api_datasource.dart';
import 'package:artemis_app/src/data/datasource/contracts/auth_datasource.dart';
import 'package:artemis_app/src/data/datasource/contracts/db_datasource.dart';
import 'package:artemis_app/src/data/models/user_model.dart';
import 'package:artemis_app/src/domain/contracts/article_repository.dart';
import 'package:artemis_app/src/domain/contracts/auth_repository.dart';
import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

// Mock Repositories
class MockArticleRepository extends Mock implements IArticleRepository {}

class MockAuthRepository extends Mock implements IAuthRepository {}

class MockFavoritesRepository extends Mock implements IFavoritesRepository {}

// Mock Datasources
class MockArticleApiDatasource extends Mock implements IArticleApiDatasource {}

class MockAuthDatasource extends Mock implements IAuthDatasource {}

class MockDbDatasource extends Mock implements DbDataSource {}

// Mock Models
class MockUserModel extends Mock implements UserModel {}

// Mock CancelToken for Dio
class MockCancelToken extends Mock implements CancelToken {}

