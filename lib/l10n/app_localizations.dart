import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('pt'),
  ];

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @signInToExplore.
  ///
  /// In en, this message translates to:
  /// **'Sign in to explore a world of knowledge'**
  String get signInToExplore;

  /// No description provided for @signInWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get signInWithGoogle;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'SKIP'**
  String get skip;

  /// No description provided for @errorLogin.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String errorLogin(String error);

  /// No description provided for @errorNoGoogleAccount.
  ///
  /// In en, this message translates to:
  /// **'No Google account available. Please add a Google account to your device.'**
  String get errorNoGoogleAccount;

  /// No description provided for @errorNetwork.
  ///
  /// In en, this message translates to:
  /// **'Network error. Please check your internet connection and try again.'**
  String get errorNetwork;

  /// No description provided for @errorInvalidToken.
  ///
  /// In en, this message translates to:
  /// **'Authentication token is invalid. Please try again.'**
  String get errorInvalidToken;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get hello;

  /// No description provided for @helloName.
  ///
  /// In en, this message translates to:
  /// **'Hello, {name}'**
  String helloName(String name);

  /// No description provided for @readArticlesThisWeek.
  ///
  /// In en, this message translates to:
  /// **'Read {count} articles this week'**
  String readArticlesThisWeek(int count);

  /// No description provided for @discoverNewIdeas.
  ///
  /// In en, this message translates to:
  /// **'Discover new ideas'**
  String get discoverNewIdeas;

  /// No description provided for @exploreInterestingTopics.
  ///
  /// In en, this message translates to:
  /// **'Explore a variety of interesting topics'**
  String get exploreInterestingTopics;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @noFavoritesYet.
  ///
  /// In en, this message translates to:
  /// **'No favorites yet'**
  String get noFavoritesYet;

  /// No description provided for @startExploringArticles.
  ///
  /// In en, this message translates to:
  /// **'Start exploring articles and save your favorites here'**
  String get startExploringArticles;

  /// No description provided for @noResultsFound.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noResultsFound;

  /// No description provided for @startTypingToSearch.
  ///
  /// In en, this message translates to:
  /// **'Start typing to search'**
  String get startTypingToSearch;

  /// No description provided for @tryDifferentSearchTerm.
  ///
  /// In en, this message translates to:
  /// **'Try a different search term'**
  String get tryDifferentSearchTerm;

  /// No description provided for @lookAtRandomArticle.
  ///
  /// In en, this message translates to:
  /// **'Look at a random article'**
  String get lookAtRandomArticle;

  /// No description provided for @errorLoadingArticle.
  ///
  /// In en, this message translates to:
  /// **'Error loading article: {error}'**
  String errorLoadingArticle(String error);

  /// No description provided for @errorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String errorGeneric(String error);

  /// No description provided for @articleExplorer.
  ///
  /// In en, this message translates to:
  /// **'Article Explorer'**
  String get articleExplorer;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'FILTERS'**
  String get filters;

  /// No description provided for @noArticlesFound.
  ///
  /// In en, this message translates to:
  /// **'No articles found'**
  String get noArticlesFound;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @searchArticles.
  ///
  /// In en, this message translates to:
  /// **'Search articles'**
  String get searchArticles;

  /// No description provided for @openAccess.
  ///
  /// In en, this message translates to:
  /// **'Open Access'**
  String get openAccess;

  /// No description provided for @articleNotFound.
  ///
  /// In en, this message translates to:
  /// **'Article not found'**
  String get articleNotFound;

  /// No description provided for @openAccessPdf.
  ///
  /// In en, this message translates to:
  /// **'Open Access • PDF'**
  String get openAccessPdf;

  /// No description provided for @viewSource.
  ///
  /// In en, this message translates to:
  /// **'View source'**
  String get viewSource;

  /// No description provided for @metrics.
  ///
  /// In en, this message translates to:
  /// **'Metrics'**
  String get metrics;

  /// No description provided for @citations.
  ///
  /// In en, this message translates to:
  /// **'Citations'**
  String get citations;

  /// No description provided for @fwci.
  ///
  /// In en, this message translates to:
  /// **'FWCI'**
  String get fwci;

  /// No description provided for @percentile.
  ///
  /// In en, this message translates to:
  /// **'Percentile'**
  String get percentile;

  /// No description provided for @topPercent.
  ///
  /// In en, this message translates to:
  /// **'Top {percent}%'**
  String topPercent(String percent);

  /// No description provided for @keyTopics.
  ///
  /// In en, this message translates to:
  /// **'Key topics'**
  String get keyTopics;

  /// No description provided for @abstractNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Abstract not available for this article yet.'**
  String get abstractNotAvailable;

  /// No description provided for @doiPdf.
  ///
  /// In en, this message translates to:
  /// **'DOI • PDF'**
  String get doiPdf;

  /// No description provided for @related.
  ///
  /// In en, this message translates to:
  /// **'Related {count} >'**
  String related(int count);

  /// No description provided for @references.
  ///
  /// In en, this message translates to:
  /// **'references {count} >'**
  String references(int count);

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'ACCOUNT'**
  String get account;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'APPEARANCE'**
  String get appearance;

  /// No description provided for @reading.
  ///
  /// In en, this message translates to:
  /// **'READING'**
  String get reading;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'ABOUT'**
  String get about;

  /// No description provided for @artemisArticleExplorer.
  ///
  /// In en, this message translates to:
  /// **'Artemis - Article Explorer'**
  String get artemisArticleExplorer;

  /// No description provided for @yourCompanionForResearch.
  ///
  /// In en, this message translates to:
  /// **'Your companion for discovering research'**
  String get yourCompanionForResearch;

  /// No description provided for @guestUser.
  ///
  /// In en, this message translates to:
  /// **'Guest User'**
  String get guestUser;

  /// No description provided for @signInToAccessAccount.
  ///
  /// In en, this message translates to:
  /// **'Sign in to access your account'**
  String get signInToAccessAccount;

  /// No description provided for @noEmail.
  ///
  /// In en, this message translates to:
  /// **'No email'**
  String get noEmail;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signInWithAccount.
  ///
  /// In en, this message translates to:
  /// **'Sign in with your account'**
  String get signInWithAccount;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @updateProfileInfo.
  ///
  /// In en, this message translates to:
  /// **'Update your profile information'**
  String get updateProfileInfo;

  /// No description provided for @editProfileComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Edit profile feature coming soon'**
  String get editProfileComingSoon;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// No description provided for @signOutOfAccount.
  ///
  /// In en, this message translates to:
  /// **'Sign out of your account'**
  String get signOutOfAccount;

  /// No description provided for @darkTheme.
  ///
  /// In en, this message translates to:
  /// **'Dark Theme'**
  String get darkTheme;

  /// No description provided for @currentlyDark.
  ///
  /// In en, this message translates to:
  /// **'Currently dark'**
  String get currentlyDark;

  /// No description provided for @currentlyLight.
  ///
  /// In en, this message translates to:
  /// **'Currently light'**
  String get currentlyLight;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get changeLanguage;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @spanish.
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get spanish;

  /// No description provided for @portuguese.
  ///
  /// In en, this message translates to:
  /// **'Portuguese'**
  String get portuguese;

  /// No description provided for @weeklyGoal.
  ///
  /// In en, this message translates to:
  /// **'Weekly Goal'**
  String get weeklyGoal;

  /// No description provided for @setReadingGoal.
  ///
  /// In en, this message translates to:
  /// **'Set your reading goal'**
  String get setReadingGoal;

  /// No description provided for @articlesCount.
  ///
  /// In en, this message translates to:
  /// **'{count} articles'**
  String articlesCount(int count);

  /// No description provided for @setWeeklyGoal.
  ///
  /// In en, this message translates to:
  /// **'Set Weekly Goal'**
  String get setWeeklyGoal;

  /// No description provided for @numberOfArticles.
  ///
  /// In en, this message translates to:
  /// **'Number of articles'**
  String get numberOfArticles;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @weeklyGoalSet.
  ///
  /// In en, this message translates to:
  /// **'Weekly goal set to {count} articles'**
  String weeklyGoalSet(int count);

  /// No description provided for @pleaseEnterValidNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid positive number'**
  String get pleaseEnterValidNumber;

  /// No description provided for @fontSize.
  ///
  /// In en, this message translates to:
  /// **'Font Size'**
  String get fontSize;

  /// No description provided for @adjustReadingComfort.
  ///
  /// In en, this message translates to:
  /// **'Adjust reading comfort'**
  String get adjustReadingComfort;

  /// No description provided for @medium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// No description provided for @fontSizeComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Font size feature coming soon'**
  String get fontSizeComingSoon;

  /// No description provided for @readingMode.
  ///
  /// In en, this message translates to:
  /// **'Reading Mode'**
  String get readingMode;

  /// No description provided for @chooseHowToRead.
  ///
  /// In en, this message translates to:
  /// **'Choose how to read articles'**
  String get chooseHowToRead;

  /// No description provided for @distractionFree.
  ///
  /// In en, this message translates to:
  /// **'Distraction-free'**
  String get distractionFree;

  /// No description provided for @readingModeComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Reading mode feature coming soon'**
  String get readingModeComingSoon;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get appVersion;

  /// No description provided for @versionInfo.
  ///
  /// In en, this message translates to:
  /// **'Version 1.0.0 (Build 1)'**
  String get versionInfo;

  /// No description provided for @termsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;

  /// No description provided for @legalInformation.
  ///
  /// In en, this message translates to:
  /// **'Legal information'**
  String get legalInformation;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @howWeHandleData.
  ///
  /// In en, this message translates to:
  /// **'How we handle your data'**
  String get howWeHandleData;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingSoon;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @publicationYear.
  ///
  /// In en, this message translates to:
  /// **'Publication year'**
  String get publicationYear;

  /// No description provided for @publicationType.
  ///
  /// In en, this message translates to:
  /// **'Publication type'**
  String get publicationType;

  /// No description provided for @articles.
  ///
  /// In en, this message translates to:
  /// **'Articles'**
  String get articles;

  /// No description provided for @journals.
  ///
  /// In en, this message translates to:
  /// **'Journals'**
  String get journals;

  /// No description provided for @conferences.
  ///
  /// In en, this message translates to:
  /// **'Conferences'**
  String get conferences;

  /// No description provided for @access.
  ///
  /// In en, this message translates to:
  /// **'Access'**
  String get access;

  /// No description provided for @applyFilters.
  ///
  /// In en, this message translates to:
  /// **'Apply filters'**
  String get applyFilters;

  /// No description provided for @typeArticle.
  ///
  /// In en, this message translates to:
  /// **'Article'**
  String get typeArticle;

  /// No description provided for @typeJournal.
  ///
  /// In en, this message translates to:
  /// **'Journal'**
  String get typeJournal;

  /// No description provided for @typeBook.
  ///
  /// In en, this message translates to:
  /// **'Book'**
  String get typeBook;

  /// No description provided for @typeConference.
  ///
  /// In en, this message translates to:
  /// **'Conference'**
  String get typeConference;

  /// No description provided for @typeDataset.
  ///
  /// In en, this message translates to:
  /// **'Dataset'**
  String get typeDataset;

  /// No description provided for @typePreprint.
  ///
  /// In en, this message translates to:
  /// **'Preprint'**
  String get typePreprint;

  /// No description provided for @typeUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get typeUnknown;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
