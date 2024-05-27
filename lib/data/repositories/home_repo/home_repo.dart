import 'package:dartz/dartz.dart';
import 'package:news_app/data/model/news_model/news_model.dart';
import 'package:news_app/domain/failures/main_failures.dart';

abstract class HomeRepo {
  Future<Either<MainFailure, NewsResults>> getBreakingNews();
  Future<Either<MainFailure, NewsResults>> getTrendingNews();
  Future<Either<MainFailure, NewsResults>> categoryNews(
      {required String query});
}
