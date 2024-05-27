// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../applications/category_bloc/category_bloc.dart' as _i9;
import '../applications/home_bloc/home_bloc.dart' as _i8;
import '../applications/search_bloc/search_bloc.dart' as _i5;
import '../applications/trending_bloc/trending_bloc.dart' as _i10;
import '../data/repositories/home_repo/home_impl.dart' as _i7;
import '../data/repositories/home_repo/home_repo.dart' as _i6;
import '../data/repositories/search_service/search_impl.dart' as _i4;
import '../data/repositories/search_service/search_repo.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.SearchService>(() => _i4.SearchImpl());
    gh.factory<_i5.SearchBloc>(() => _i5.SearchBloc(gh<_i3.SearchService>()));
    gh.lazySingleton<_i6.HomeRepo>(() => _i7.HomeRepository());
    gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc(gh<_i6.HomeRepo>()));
    gh.factory<_i9.CategoryBloc>(() => _i9.CategoryBloc(gh<_i6.HomeRepo>()));
    gh.factory<_i10.TrendingBloc>(() => _i10.TrendingBloc(gh<_i6.HomeRepo>()));
    return this;
  }
}
