// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get welcome => 'Bienvenido';

  @override
  String get signInToExplore =>
      'Inicia sesión para explorar un mundo de conocimiento';

  @override
  String get signInWithGoogle => 'Iniciar sesión con Google';

  @override
  String get skip => 'OMITIR';

  @override
  String errorLogin(String error) {
    return 'Error: $error';
  }

  @override
  String get errorNoGoogleAccount =>
      'La cuenta de Google no está disponible. Por favor añade la cuenta de Google en el dispositivo.';

  @override
  String get errorNetwork =>
      'Error de conexión. Por favor revisa tu conexión a internet e intenta nuevamente.';

  @override
  String get errorInvalidToken =>
      'El token de autenticación es invalido. Por favor intente nuevamente.';

  @override
  String get hello => 'Hola';

  @override
  String helloName(String name) {
    return 'Hola, $name';
  }

  @override
  String readArticlesThisWeek(int count) {
    return 'Leídos $count artículos esta semana';
  }

  @override
  String get discoverNewIdeas => 'Descubre nuevas ideas';

  @override
  String get exploreInterestingTopics =>
      'Explora una variedad de temas interesantes';

  @override
  String get favorites => 'Favoritos';

  @override
  String get noFavoritesYet => 'Aún no hay favoritos';

  @override
  String get startExploringArticles =>
      'Comienza a explorar artículos y guarda tus favoritos aquí';

  @override
  String get noResultsFound => 'No se encontraron resultados';

  @override
  String get startTypingToSearch => 'Comienza a escribir para buscar';

  @override
  String get tryDifferentSearchTerm =>
      'Intenta con un término de búsqueda diferente';

  @override
  String get lookAtRandomArticle => 'Ver un artículo aleatorio';

  @override
  String errorLoadingArticle(String error) {
    return 'Error al cargar el artículo: $error';
  }

  @override
  String errorGeneric(String error) {
    return 'Error: $error';
  }

  @override
  String get articleExplorer => 'Explorador de Artículos';

  @override
  String get filters => 'FILTROS';

  @override
  String get noArticlesFound => 'No se encontraron artículos';

  @override
  String get retry => 'Reintentar';

  @override
  String get searchArticles => 'Buscar artículos';

  @override
  String get openAccess => 'Acceso Abierto';

  @override
  String get articleNotFound => 'Artículo no encontrado';

  @override
  String get openAccessPdf => 'Acceso Abierto • PDF';

  @override
  String get viewSource => 'Ver fuente';

  @override
  String get metrics => 'Métricas';

  @override
  String get citations => 'Citas';

  @override
  String get fwci => 'FWCI';

  @override
  String get percentile => 'Percentil';

  @override
  String topPercent(String percent) {
    return 'Top $percent%';
  }

  @override
  String get keyTopics => 'Temas clave';

  @override
  String get abstractNotAvailable =>
      'Resumen aún no disponible para este artículo.';

  @override
  String get doiPdf => 'DOI • PDF';

  @override
  String related(int count) {
    return 'Relacionados $count >';
  }

  @override
  String references(int count) {
    return 'referencias $count >';
  }

  @override
  String get settings => 'Configuración';

  @override
  String get account => 'CUENTA';

  @override
  String get appearance => 'APARIENCIA';

  @override
  String get reading => 'LECTURA';

  @override
  String get about => 'ACERCA DE';

  @override
  String get artemisArticleExplorer => 'Artemis - Explorador de Artículos';

  @override
  String get yourCompanionForResearch =>
      'Tu compañero para descubrir investigación';

  @override
  String get guestUser => 'Usuario Invitado';

  @override
  String get signInToAccessAccount => 'Inicia sesión para acceder a tu cuenta';

  @override
  String get noEmail => 'Sin correo electrónico';

  @override
  String get signIn => 'Iniciar Sesión';

  @override
  String get signInWithAccount => 'Inicia sesión con tu cuenta';

  @override
  String get editProfile => 'Editar Perfil';

  @override
  String get updateProfileInfo => 'Actualiza la información de tu perfil';

  @override
  String get editProfileComingSoon =>
      'La función de editar perfil estará disponible pronto';

  @override
  String get signOut => 'Cerrar Sesión';

  @override
  String get signOutOfAccount => 'Cierra sesión de tu cuenta';

  @override
  String get darkTheme => 'Tema Oscuro';

  @override
  String get currentlyDark => 'Actualmente oscuro';

  @override
  String get currentlyLight => 'Actualmente claro';

  @override
  String get language => 'Idioma';

  @override
  String get changeLanguage => 'Cambiar idioma';

  @override
  String get english => 'Ingles';

  @override
  String get spanish => 'Español';

  @override
  String get portuguese => 'Portuguez';

  @override
  String get weeklyGoal => 'Meta Semanal';

  @override
  String get setReadingGoal => 'Establece tu meta de lectura';

  @override
  String articlesCount(int count) {
    return '$count artículos';
  }

  @override
  String get setWeeklyGoal => 'Establecer Meta Semanal';

  @override
  String get numberOfArticles => 'Número de artículos';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Guardar';

  @override
  String weeklyGoalSet(int count) {
    return 'Meta semanal establecida en $count artículos';
  }

  @override
  String get pleaseEnterValidNumber =>
      'Por favor ingresa un número positivo válido';

  @override
  String get fontSize => 'Tamaño de Fuente';

  @override
  String get adjustReadingComfort => 'Ajusta la comodidad de lectura';

  @override
  String get medium => 'Medio';

  @override
  String get fontSizeComingSoon =>
      'La función de tamaño de fuente estará disponible pronto';

  @override
  String get readingMode => 'Modo de Lectura';

  @override
  String get chooseHowToRead => 'Elige cómo leer los artículos';

  @override
  String get distractionFree => 'Sin distracciones';

  @override
  String get readingModeComingSoon =>
      'El modo de lectura estará disponible pronto';

  @override
  String get appVersion => 'Versión de la App';

  @override
  String get versionInfo => 'Versión 1.0.0 (Build 1)';

  @override
  String get termsOfService => 'Términos de Servicio';

  @override
  String get legalInformation => 'Información legal';

  @override
  String get privacyPolicy => 'Política de Privacidad';

  @override
  String get howWeHandleData => 'Cómo manejamos tus datos';

  @override
  String get comingSoon => 'Próximamente';

  @override
  String get clear => 'Limpiar';

  @override
  String get publicationYear => 'Año de publicación';

  @override
  String get publicationType => 'Tipo de publicación';

  @override
  String get articles => 'Artículos';

  @override
  String get journals => 'Revistas';

  @override
  String get conferences => 'Conferencias';

  @override
  String get access => 'Acceso';

  @override
  String get applyFilters => 'Aplicar filtros';

  @override
  String get typeArticle => 'Artículo';

  @override
  String get typeJournal => 'Revista';

  @override
  String get typeBook => 'Libro';

  @override
  String get typeConference => 'Conferencia';

  @override
  String get typeDataset => 'Conjunto de datos';

  @override
  String get typePreprint => 'Preimpresión';

  @override
  String get typeUnknown => 'Desconocido';
}
