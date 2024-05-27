import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:news_app/data/model/news_model/news_model.dart';
import 'package:news_app/data/repositories/search_service/search_repo.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchService _searchService;
  SearchBloc(this._searchService) : super(const Initial()) {
    on<SearchQueryChanged>((event, emit) async {
      if (event.query.isEmpty) return;
      emit(const Loading());

      final result = await _searchService.searchMovies(query: event.query);
      result.fold((l) => emit(const Error('Unexpected Error Occured')),
          (r) => emit(Loaded(r.articles)));
    });
    on<ClearSearch>((event, emit) {
      emit(const Initial());
    });
  }
}
