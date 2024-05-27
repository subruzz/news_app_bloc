part of 'trending_bloc.dart';

@freezed
class TrendingState with _$TrendingState {
  const factory TrendingState({
    required List<NewsArticles> breakingNews,
    required List<NewsArticles> trendingNews,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;
  factory TrendingState.initial() =>
      const TrendingState(breakingNews : [], trendingNews :[],isLoading :false,hasError: false);
}
