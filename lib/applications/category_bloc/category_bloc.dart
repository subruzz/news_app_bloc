import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/data/model/news_model/news_model.dart';
import 'package:news_app/data/repositories/home_repo/home_repo.dart';
import 'package:news_app/domain/failures/main_failures.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';
@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final HomeRepo _repo;
  CategoryBloc(this._repo) : super(CategoryState.initial()) {
    on<_StartFetching>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final result = await _repo.categoryNews(query: event.query);
      final newState = result.fold((MainFailure failure) {
        return state.copyWith(
            isLoading: false, categoryBasedNews: [], hasError: true);
      }, (NewsResults news) {
        return state.copyWith(
            isLoading: false,
            categoryBasedNews: news.articles,
            hasError: false);
      });
      emit(newState);
    });
  }
}
