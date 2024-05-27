import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/data/model/news_model/news_model.dart';
import 'package:news_app/domain/failures/main_failures.dart';
import 'package:news_app/data/repositories/home_repo/home_repo.dart';

part 'trending_event.dart';
part 'trending_state.dart';
part 'trending_bloc.freezed.dart';

@injectable
class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  final HomeRepo _repo;
  TrendingBloc(this._repo) : super(TrendingState.initial()) {
    on<_FetchBreakingNews>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final result = await _repo.getBreakingNews();
      final newState = result.fold((MainFailure failure) {
        return state.copyWith(
            isLoading: false, breakingNews: [], hasError: true);
      }, (NewsResults news) {
        return state.copyWith(
            isLoading: false, breakingNews: news.articles, hasError: false);
      });
      emit(newState);
    });
    on<_FetchTrendingNews>((event, emit) async {
      if (state.trendingNews.isNotEmpty) return;
      emit(state.copyWith(isLoading: true, hasError: false));
      final result = await _repo.getTrendingNews();
      final newState = result.fold((MainFailure failure) {
        return state.copyWith(
            isLoading: false, trendingNews: [], hasError: true);
      }, (NewsResults news) {
        return state.copyWith(
            isLoading: false, trendingNews: news.articles, hasError: false);
      });
      emit(newState);
    });
  }
}
