part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
 const factory SearchEvent.searchQueryChanged(String query)  =SearchQueryChanged;
  const factory SearchEvent.clearSearch() =ClearSearch;
}
