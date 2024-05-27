import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/domain/failures/main_failures.dart';
import 'package:news_app/data/model/news_model/news_model.dart';
import 'package:news_app/data/repositories/search_service/search_repo.dart';

import '../../constants/api_endpoints.dart';

@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailure, NewsResults>> searchMovies(
      {required String query}) async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.serachapi(query));
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
}
