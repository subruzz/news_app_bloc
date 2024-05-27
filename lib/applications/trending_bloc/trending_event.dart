part of 'trending_bloc.dart';

@freezed
class TrendingEvent with _$TrendingEvent {
  const factory TrendingEvent.fetchBreakingNews() = _FetchBreakingNews;
    const factory TrendingEvent.fetchTrendingNews() = _FetchTrendingNews;

}