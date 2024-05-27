import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/data/model/news_model/news_model.dart';
import 'package:news_app/domain/failures/main_failures.dart';
import 'package:news_app/data/repositories/home_repo/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepo _homeRepo;
  HomeBloc(this._homeRepo) : super(const _InitialState()) {
    on<_FetchNews>((event, emit) async {
      emit(const _LoadingState());
      final Either<MainFailure, NewsResults> newsModelOptions =
          await _homeRepo.getBreakingNews();

      emit(
        newsModelOptions.fold((l) => _ErrorState(),
            (r) => _DataState(breakingNews: r.articles,)),
      );
    });
  }
}
