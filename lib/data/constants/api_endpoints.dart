import 'package:news_app/data/constants/api_key.dart';

class ApiEndPoints {
  static const topNews =
      'https://newsapi.org/v2/top-headlines?countryin&apiKey=$apiKey';
  static const breakingNews =
      'https://newsapi.org/v2/everything?q=breaking%20news&apiKey=$apiKey';
  static const tredningNews =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey';
  static String serachapi(String query) {
    return 'https://newsapi.org/v2/everything?q=$query%20news&apiKey=$apiKey';
  }

  static String categoryApi(String category) {
    return 'https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=$apiKey';
  }
}
