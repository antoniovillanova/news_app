import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:news_app/features/show_news/domain/entities/news_info.dart';
import 'package:news_app/features/show_news/domain/usecases/fetch_news.dart';
import 'package:news_app/features/show_news/presentation/news_cubit/news_state.dart';

import '../../../core/failures_successes/failure.dart';
import '../../../core/services_locator.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial(news: const []));

  final FetchNewsUseCase _fetchNewsUseCase = sl<FetchNewsUseCase>();

  void fetchNews(String? searchText) async {
    emit(NewsLoading());

    final Either<Failure, List<NewsInfo>> fetchNewsResult = await _fetchNewsUseCase.fetchNews(searchText);

    fetchNewsResult.fold((l) => emit(NewsError()), (r) => emit(NewsInitial(news: r)));
  }
}
