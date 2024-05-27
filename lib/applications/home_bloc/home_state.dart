part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _InitialState;
  const factory HomeState.loading() = _LoadingState;
  factory HomeState.data({
    required List<NewsArticles> breakingNews,
  }) = _DataState;
  factory HomeState.error() = _ErrorState;
}
