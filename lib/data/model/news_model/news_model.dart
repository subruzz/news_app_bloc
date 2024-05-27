import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_model.g.dart';

@JsonSerializable()
class NewsResults {
  String? status;
  int? totalResults;
  List<NewsArticles> articles;

  NewsResults({this.status, this.totalResults, this.articles = const []});
  factory NewsResults.fromJson(Map<String, dynamic> json) {
    return _$NewsResultsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewsResultsToJson(this);
}

@JsonSerializable()
class NewsArticles {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  NewsArticles({
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory NewsArticles.fromJson(Map<String, dynamic> json) {
    return _$NewsArticlesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewsArticlesToJson(this);
}
