part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required List<NewsArticles> categoryBasedNews,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;
   factory CategoryState.initial() =>
      const CategoryState(categoryBasedNews:[],isLoading :false,hasError: false);
}
