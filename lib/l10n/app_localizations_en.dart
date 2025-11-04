// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome => 'Welcome';

  @override
  String get signInToExplore => 'Sign in to explore a world of knowledge';

  @override
  String get signInWithGoogle => 'Sign in with Google';

  @override
  String get skip => 'SKIP';

  @override
  String errorLogin(String error) {
    return 'Error: $error';
  }

  @override
  String get errorNoGoogleAccount =>
      'No Google account available. Please add a Google account to your device.';

  @override
  String get errorNetwork =>
      'Network error. Please check your internet connection and try again.';

  @override
  String get errorInvalidToken =>
      'Authentication token is invalid. Please try again.';

  @override
  String get hello => 'Hello';

  @override
  String helloName(String name) {
    return 'Hello, $name';
  }

  @override
  String readArticlesThisWeek(int count) {
    return 'Read $count articles this week';
  }

  @override
  String get discoverNewIdeas => 'Discover new ideas';

  @override
  String get exploreInterestingTopics =>
      'Explore a variety of interesting topics';

  @override
  String get favorites => 'Favorites';

  @override
  String get noFavoritesYet => 'No favorites yet';

  @override
  String get startExploringArticles =>
      'Start exploring articles and save your favorites here';

  @override
  String get noResultsFound => 'No results found';

  @override
  String get startTypingToSearch => 'Start typing to search';

  @override
  String get tryDifferentSearchTerm => 'Try a different search term';

  @override
  String get lookAtRandomArticle => 'Look at a random article';

  @override
  String errorLoadingArticle(String error) {
    return 'Error loading article: $error';
  }

  @override
  String errorGeneric(String error) {
    return 'Error: $error';
  }

  @override
  String get articleExplorer => 'Article Explorer';

  @override
  String get filters => 'FILTERS';

  @override
  String get noArticlesFound => 'No articles found';

  @override
  String get retry => 'Retry';

  @override
  String get searchArticles => 'Search articles';

  @override
  String get openAccess => 'Open Access';

  @override
  String get articleNotFound => 'Article not found';

  @override
  String get openAccessPdf => 'Open Access • PDF';

  @override
  String get viewSource => 'View source';

  @override
  String get metrics => 'Metrics';

  @override
  String get citations => 'Citations';

  @override
  String get fwci => 'FWCI';

  @override
  String get percentile => 'Percentile';

  @override
  String topPercent(String percent) {
    return 'Top $percent%';
  }

  @override
  String get keyTopics => 'Key topics';

  @override
  String get abstractNotAvailable =>
      'Abstract not available for this article yet.';

  @override
  String get doiPdf => 'DOI • PDF';

  @override
  String related(int count) {
    return 'Related $count >';
  }

  @override
  String references(int count) {
    return 'references $count >';
  }

  @override
  String get settings => 'Settings';

  @override
  String get account => 'ACCOUNT';

  @override
  String get appearance => 'APPEARANCE';

  @override
  String get reading => 'READING';

  @override
  String get about => 'ABOUT';

  @override
  String get artemisArticleExplorer => 'Artemis - Article Explorer';

  @override
  String get yourCompanionForResearch =>
      'Your companion for discovering research';

  @override
  String get guestUser => 'Guest User';

  @override
  String get signInToAccessAccount => 'Sign in to access your account';

  @override
  String get noEmail => 'No email';

  @override
  String get signIn => 'Sign In';

  @override
  String get signInWithAccount => 'Sign in with your account';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get updateProfileInfo => 'Update your profile information';

  @override
  String get editProfileComingSoon => 'Edit profile feature coming soon';

  @override
  String get signOut => 'Sign Out';

  @override
  String get signOutOfAccount => 'Sign out of your account';

  @override
  String get darkTheme => 'Dark Theme';

  @override
  String get currentlyDark => 'Currently dark';

  @override
  String get currentlyLight => 'Currently light';

  @override
  String get language => 'Language';

  @override
  String get changeLanguage => 'Change language';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Spanish';

  @override
  String get portuguese => 'Portuguese';

  @override
  String get weeklyGoal => 'Weekly Goal';

  @override
  String get setReadingGoal => 'Set your reading goal';

  @override
  String articlesCount(int count) {
    return '$count articles';
  }

  @override
  String get setWeeklyGoal => 'Set Weekly Goal';

  @override
  String get numberOfArticles => 'Number of articles';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String weeklyGoalSet(int count) {
    return 'Weekly goal set to $count articles';
  }

  @override
  String get pleaseEnterValidNumber => 'Please enter a valid positive number';

  @override
  String get fontSize => 'Font Size';

  @override
  String get adjustReadingComfort => 'Adjust reading comfort';

  @override
  String get fontSizePreview => 'The quick brown fox jumps over the lazy dog';

  @override
  String get medium => 'Medium';

  @override
  String get fontSizeComingSoon => 'Font size feature coming soon';

  @override
  String get readingMode => 'Reading Mode';

  @override
  String get chooseHowToRead => 'Choose how to read articles';

  @override
  String get distractionFree => 'Distraction-free';

  @override
  String get readingModeComingSoon => 'Reading mode feature coming soon';

  @override
  String get appVersion => 'App Version';

  @override
  String get versionInfo => 'Version 1.0.0 (Build 1)';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get legalInformation => 'Legal information';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get howWeHandleData => 'How we handle your data';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get clear => 'Clear';

  @override
  String get publicationYear => 'Publication year';

  @override
  String get publicationType => 'Publication type';

  @override
  String get articles => 'Articles';

  @override
  String get journals => 'Journals';

  @override
  String get conferences => 'Conferences';

  @override
  String get access => 'Access';

  @override
  String get applyFilters => 'Apply filters';

  @override
  String get typeArticle => 'Article';

  @override
  String get typeJournal => 'Journal';

  @override
  String get typeBook => 'Book';

  @override
  String get typeConference => 'Conference';

  @override
  String get typeDataset => 'Dataset';

  @override
  String get typePreprint => 'Preprint';

  @override
  String get typeUnknown => 'Unknown';
}
