import 'package:dartz/dartz.dart';
import 'package:news_app/features/show_news/domain/entities/news_info.dart';

import '../../../core/failures_successes/failure.dart';

abstract class FetchRepo {
  Future<Either<FetchFailure, List<NewsInfo>>> fetchNews(String? searchText);
}