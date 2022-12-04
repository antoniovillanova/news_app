import 'package:news_app/features/core/failures_successes/failure.dart';
import 'package:news_app/features/show_news/domain/repositories/fetch_repo_contract.dart';

import '../../../core/services_locator.dart';
import '../entities/news_info.dart';
import 'package:dartz/dartz.dart';

class FetchNewsUseCase {
  final FetchRepo fetchRepo = sl<FetchRepo>();
  FetchNewsUseCase();

  Future<Either<FetchFailure, List<NewsInfo>>> fetchNews(String? searchText) {
    return fetchRepo.fetchNews(searchText);
  }
}