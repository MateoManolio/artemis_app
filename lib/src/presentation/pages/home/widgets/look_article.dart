import 'package:artemis_app/src/config/route/details_parameters.dart';
import 'package:artemis_app/src/presentation/widgets/filter_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:artemis_app/l10n/app_localizations.dart';
import 'package:artemis_app/src/presentation/pages/home/providers/get_random_article_provider.dart';
import 'package:go_router/go_router.dart';

class LookArticle extends ConsumerStatefulWidget {
  const LookArticle({super.key});

  static const double padding = 4;

  @override
  ConsumerState<LookArticle> createState() => _LookArticleState();
}

class _LookArticleState extends ConsumerState<LookArticle> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Row(
      children: [
        Card(
          child: IconButton(
            onPressed: () => FilterModal.show(context),
            icon: const Icon(Icons.filter_list),
          ),
        ),
        Card(
          child: _isLoading
              ? const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                )
              : IconButton(
                  onPressed: () async {
                    if (_isLoading) return;
                    setState(() => _isLoading = true);
                    try {
                      final article = await ref.refresh(
                        getRandomArticleProviderProvider.future,
                      );
                      if (!mounted) return;
                      // Si ya no estamos en la ruta actual, no navegar
                      final isCurrentRoute =
                          ModalRoute.of(context)?.isCurrent ?? false;
                      if (!isCurrentRoute) return;
                      context.push(
                        '/details',
                        extra: DetailsParameters(article: article),
                      );
                    } catch (e) {
                      if (!mounted) return;
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l10n.errorLoadingArticle(e.toString()))),
                      );
                    } finally {
                      if (mounted) setState(() => _isLoading = false);
                    }
                  },
                  icon: const Icon(Icons.casino),
                  tooltip: l10n.lookAtRandomArticle,
                ),
        ),
      ],
    );
  }
}
