import 'package:dartz/dartz.dart';
import 'package:news_app/features/core/failures_successes/exceptions.dart';
import 'package:news_app/features/core/failures_successes/failure.dart';
import 'package:news_app/features/show_news/data/data_sources/fetch_from_remote_ds.dart';
import 'package:news_app/features/show_news/domain/entities/news_info.dart';
import 'package:news_app/features/show_news/domain/repositories/fetch_repo_contract.dart';

import '../../../core/services_locator.dart';

class FetchRepoImpl implements FetchRepo {
  final FetchFromRemoteDS fetchFromRemoteDS = sl<FetchFromRemoteDS>();

  FetchRepoImpl();

  @override
  Future<Either<FetchFailure, List<NewsInfo>>> fetchNews(String? searchText) async {
    try {
      return Right(await fetchFromRemoteDS.fetchNews(searchText));
    } on FetchException catch(e) {
      return Left(FetchFailure(message: e.message));
    }
  }
}