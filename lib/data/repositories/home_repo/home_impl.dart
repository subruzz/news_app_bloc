import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/data/constants/api_endpoints.dart';
import 'package:news_app/data/model/news_model/news_model.dart';
import 'package:news_app/domain/failures/main_failures.dart';
import 'package:news_app/data/repositories/home_repo/home_repo.dart';

@LazySingleton(as: HomeRepo)
class HomeRepository implements HomeRepo {
  @override
  Future<Either<MainFailure, NewsResults>> getBreakingNews() async {
    print('started');
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.breakingNews);
      print(response.data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewsResults.fromJson(response.data);

        return right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e);
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, NewsResults>> getTrendingNews() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.tredningNews);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewsResults.fromJson(response.data);
        return right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, NewsResults>> categoryNews(
      {required String query}) async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.categoryApi(query));
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewsResults.fromJson(response.data);
        print(result.articles);
        return right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
