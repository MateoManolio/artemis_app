import 'package:envied/envied.dart';

part 'env.g.dart';

/// Environment configuration for Firebase API keys.
/// 
/// This class uses the `envied` package to load and obfuscate
/// environment variables from the `.env` file.
/// 
/// The generated code is in `env.g.dart` which is created by running:
/// ```
/// flutter pub run build_runner build --delete-conflicting-outputs
/// ```
@Envied(path: '.env')
abstract class Env {
  /// Firebase Web API Key
  @EnviedField(varName: 'FIREBASE_WEB_API_KEY', obfuscate: true)
  static final String firebaseWebApiKey = _Env.firebaseWebApiKey;

  /// Firebase Android API Key
  @EnviedField(varName: 'FIREBASE_ANDROID_API_KEY', obfuscate: true)
  static final String firebaseAndroidApiKey = _Env.firebaseAndroidApiKey;

  /// Firebase iOS API Key
  @EnviedField(varName: 'FIREBASE_IOS_API_KEY', obfuscate: true)
  static final String firebaseIosApiKey = _Env.firebaseIosApiKey;

  /// Firebase Web App ID
  @EnviedField(varName: 'FIREBASE_APP_ID_WEB')
  static final String firebaseAppIdWeb = _Env.firebaseAppIdWeb;

  /// Firebase Android App ID
  @EnviedField(varName: 'FIREBASE_APP_ID_ANDROID')
  static final String firebaseAppIdAndroid = _Env.firebaseAppIdAndroid;

  /// Firebase iOS App ID
  @EnviedField(varName: 'FIREBASE_APP_ID_IOS')
  static final String firebaseAppIdIos = _Env.firebaseAppIdIos;

  /// Firebase Messaging Sender ID
  @EnviedField(varName: 'FIREBASE_MESSAGING_SENDER_ID')
  static final String firebaseMessagingSenderId =
      _Env.firebaseMessagingSenderId;

  /// Firebase Project ID
  @EnviedField(varName: 'FIREBASE_PROJECT_ID')
  static final String firebaseProjectId = _Env.firebaseProjectId;

  /// Firebase Auth Domain
  @EnviedField(varName: 'FIREBASE_AUTH_DOMAIN')
  static final String firebaseAuthDomain = _Env.firebaseAuthDomain;

  /// Firebase Storage Bucket
  @EnviedField(varName: 'FIREBASE_STORAGE_BUCKET')
  static final String firebaseStorageBucket = _Env.firebaseStorageBucket;

  /// Firebase iOS Bundle ID
  @EnviedField(varName: 'FIREBASE_IOS_BUNDLE_ID')
  static final String firebaseIosBundleId = _Env.firebaseIosBundleId;
}
