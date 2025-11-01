// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get welcome => 'Bem-vindo';

  @override
  String get signInToExplore =>
      'Faça login para explorar um mundo de conhecimento';

  @override
  String get signInWithGoogle => 'Entrar com o Google';

  @override
  String get skip => 'PULAR';

  @override
  String errorLogin(String error) {
    return 'Erro: $error';
  }

  @override
  String get hello => 'Olá';

  @override
  String helloName(String name) {
    return 'Olá, $name';
  }

  @override
  String readArticlesThisWeek(int count) {
    return 'Leu $count artigos esta semana';
  }

  @override
  String get discoverNewIdeas => 'Descubra novas ideias';

  @override
  String get exploreInterestingTopics =>
      'Explore uma variedade de tópicos interessantes';

  @override
  String get favorites => 'Favoritos';

  @override
  String get noFavoritesYet => 'Ainda não há favoritos';

  @override
  String get startExploringArticles =>
      'Comece a explorar artigos e salve seus favoritos aqui';

  @override
  String get noResultsFound => 'Nenhum resultado encontrado';

  @override
  String get startTypingToSearch => 'Comece a digitar para pesquisar';

  @override
  String get tryDifferentSearchTerm => 'Tente um termo de pesquisa diferente';

  @override
  String get lookAtRandomArticle => 'Ver um artigo aleatório';

  @override
  String errorLoadingArticle(String error) {
    return 'Erro ao carregar artigo: $error';
  }

  @override
  String errorGeneric(String error) {
    return 'Erro: $error';
  }

  @override
  String get articleExplorer => 'Explorador de Artigos';

  @override
  String get filters => 'FILTROS';

  @override
  String get noArticlesFound => 'Nenhum artigo encontrado';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get searchArticles => 'Pesquisar artigos';

  @override
  String get openAccess => 'Acesso Aberto';

  @override
  String get articleNotFound => 'Artigo não encontrado';

  @override
  String get openAccessPdf => 'Acesso Aberto • PDF';

  @override
  String get viewSource => 'Ver fonte';

  @override
  String get metrics => 'Métricas';

  @override
  String get citations => 'Citações';

  @override
  String get fwci => 'FWCI';

  @override
  String get percentile => 'Percentil';

  @override
  String topPercent(String percent) {
    return 'Top $percent%';
  }

  @override
  String get keyTopics => 'Tópicos principais';

  @override
  String get abstractNotAvailable =>
      'Resumo ainda não disponível para este artigo.';

  @override
  String get doiPdf => 'DOI • PDF';

  @override
  String related(int count) {
    return 'Relacionados $count >';
  }

  @override
  String references(int count) {
    return 'referências $count >';
  }

  @override
  String get settings => 'Configurações';

  @override
  String get account => 'CONTA';

  @override
  String get appearance => 'APARÊNCIA';

  @override
  String get reading => 'LEITURA';

  @override
  String get about => 'SOBRE';

  @override
  String get artemisArticleExplorer => 'Artemis - Explorador de Artigos';

  @override
  String get yourCompanionForResearch =>
      'Seu companheiro para descobrir pesquisas';

  @override
  String get guestUser => 'Usuário Convidado';

  @override
  String get signInToAccessAccount => 'Faça login para acessar sua conta';

  @override
  String get noEmail => 'Sem e-mail';

  @override
  String get signIn => 'Entrar';

  @override
  String get signInWithAccount => 'Entre com sua conta';

  @override
  String get editProfile => 'Editar Perfil';

  @override
  String get updateProfileInfo => 'Atualize as informações do seu perfil';

  @override
  String get editProfileComingSoon => 'Recurso de editar perfil em breve';

  @override
  String get signOut => 'Sair';

  @override
  String get signOutOfAccount => 'Saia da sua conta';

  @override
  String get darkTheme => 'Tema Escuro';

  @override
  String get currentlyDark => 'Atualmente escuro';

  @override
  String get currentlyLight => 'Atualmente claro';

  @override
  String get language => 'language';

  @override
  String get changeLanguage => 'change language';

  @override
  String get english => 'inglês';

  @override
  String get spanish => 'Espanhol';

  @override
  String get portuguese => 'Português';

  @override
  String get weeklyGoal => 'Meta Semanal';

  @override
  String get setReadingGoal => 'Defina sua meta de leitura';

  @override
  String articlesCount(int count) {
    return '$count artigos';
  }

  @override
  String get setWeeklyGoal => 'Definir Meta Semanal';

  @override
  String get numberOfArticles => 'Número de artigos';

  @override
  String get cancel => 'Cancelar';

  @override
  String get save => 'Salvar';

  @override
  String weeklyGoalSet(int count) {
    return 'Meta semanal definida para $count artigos';
  }

  @override
  String get pleaseEnterValidNumber =>
      'Por favor, insira um número positivo válido';

  @override
  String get fontSize => 'Tamanho da Fonte';

  @override
  String get adjustReadingComfort => 'Ajuste o conforto de leitura';

  @override
  String get medium => 'Médio';

  @override
  String get fontSizeComingSoon => 'Recurso de tamanho de fonte em breve';

  @override
  String get readingMode => 'Modo de Leitura';

  @override
  String get chooseHowToRead => 'Escolha como ler artigos';

  @override
  String get distractionFree => 'Sem distrações';

  @override
  String get readingModeComingSoon => 'Modo de leitura em breve';

  @override
  String get appVersion => 'Versão do App';

  @override
  String get versionInfo => 'Versão 1.0.0 (Build 1)';

  @override
  String get termsOfService => 'Termos de Serviço';

  @override
  String get legalInformation => 'Informações legais';

  @override
  String get privacyPolicy => 'Política de Privacidade';

  @override
  String get howWeHandleData => 'Como lidamos com seus dados';

  @override
  String get comingSoon => 'Em breve';

  @override
  String get clear => 'Limpar';

  @override
  String get publicationYear => 'Ano de publicação';

  @override
  String get publicationType => 'Tipo de publicação';

  @override
  String get articles => 'Artigos';

  @override
  String get journals => 'Revistas';

  @override
  String get conferences => 'Conferências';

  @override
  String get access => 'Acesso';

  @override
  String get applyFilters => 'Aplicar filtros';

  @override
  String get typeArticle => 'Artigo';

  @override
  String get typeJournal => 'Revista';

  @override
  String get typeBook => 'Livro';

  @override
  String get typeConference => 'Conferência';

  @override
  String get typeDataset => 'Conjunto de dados';

  @override
  String get typePreprint => 'Pré-impressão';

  @override
  String get typeUnknown => 'Desconhecido';
}
