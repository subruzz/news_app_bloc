part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
   const factory SearchState.initial() = Initial;
  const factory SearchState.loading() = Loading;
  const factory SearchState.loaded(List<NewsArticles> results) =Loaded;
  const factory SearchState.error(String message) =Error;

}
