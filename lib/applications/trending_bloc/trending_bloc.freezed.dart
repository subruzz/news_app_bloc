// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrendingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBreakingNews,
    required TResult Function() fetchTrendingNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBreakingNews,
    TResult? Function()? fetchTrendingNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBreakingNews,
    TResult Function()? fetchTrendingNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBreakingNews value) fetchBreakingNews,
    required TResult Function(_FetchTrendingNews value) fetchTrendingNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBreakingNews value)? fetchBreakingNews,
    TResult? Function(_FetchTrendingNews value)? fetchTrendingNews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBreakingNews value)? fetchBreakingNews,
    TResult Function(_FetchTrendingNews value)? fetchTrendingNews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingEventCopyWith<$Res> {
  factory $TrendingEventCopyWith(
          TrendingEvent value, $Res Function(TrendingEvent) then) =
      _$TrendingEventCopyWithImpl<$Res, TrendingEvent>;
}

/// @nodoc
class _$TrendingEventCopyWithImpl<$Res, $Val extends TrendingEvent>
    implements $TrendingEventCopyWith<$Res> {
  _$TrendingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchBreakingNewsImplCopyWith<$Res> {
  factory _$$FetchBreakingNewsImplCopyWith(_$FetchBreakingNewsImpl value,
          $Res Function(_$FetchBreakingNewsImpl) then) =
      __$$FetchBreakingNewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBreakingNewsImplCopyWithImpl<$Res>
    extends _$TrendingEventCopyWithImpl<$Res, _$FetchBreakingNewsImpl>
    implements _$$FetchBreakingNewsImplCopyWith<$Res> {
  __$$FetchBreakingNewsImplCopyWithImpl(_$FetchBreakingNewsImpl _value,
      $Res Function(_$FetchBreakingNewsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchBreakingNewsImpl implements _FetchBreakingNews {
  const _$FetchBreakingNewsImpl();

  @override
  String toString() {
    return 'TrendingEvent.fetchBreakingNews()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchBreakingNewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBreakingNews,
    required TResult Function() fetchTrendingNews,
  }) {
    return fetchBreakingNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBreakingNews,
    TResult? Function()? fetchTrendingNews,
  }) {
    return fetchBreakingNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBreakingNews,
    TResult Function()? fetchTrendingNews,
    required TResult orElse(),
  }) {
    if (fetchBreakingNews != null) {
      return fetchBreakingNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBreakingNews value) fetchBreakingNews,
    required TResult Function(_FetchTrendingNews value) fetchTrendingNews,
  }) {
    return fetchBreakingNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBreakingNews value)? fetchBreakingNews,
    TResult? Function(_FetchTrendingNews value)? fetchTrendingNews,
  }) {
    return fetchBreakingNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBreakingNews value)? fetchBreakingNews,
    TResult Function(_FetchTrendingNews value)? fetchTrendingNews,
    required TResult orElse(),
  }) {
    if (fetchBreakingNews != null) {
      return fetchBreakingNews(this);
    }
    return orElse();
  }
}

abstract class _FetchBreakingNews implements TrendingEvent {
  const factory _FetchBreakingNews() = _$FetchBreakingNewsImpl;
}

/// @nodoc
abstract class _$$FetchTrendingNewsImplCopyWith<$Res> {
  factory _$$FetchTrendingNewsImplCopyWith(_$FetchTrendingNewsImpl value,
          $Res Function(_$FetchTrendingNewsImpl) then) =
      __$$FetchTrendingNewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTrendingNewsImplCopyWithImpl<$Res>
    extends _$TrendingEventCopyWithImpl<$Res, _$FetchTrendingNewsImpl>
    implements _$$FetchTrendingNewsImplCopyWith<$Res> {
  __$$FetchTrendingNewsImplCopyWithImpl(_$FetchTrendingNewsImpl _value,
      $Res Function(_$FetchTrendingNewsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTrendingNewsImpl implements _FetchTrendingNews {
  const _$FetchTrendingNewsImpl();

  @override
  String toString() {
    return 'TrendingEvent.fetchTrendingNews()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTrendingNewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBreakingNews,
    required TResult Function() fetchTrendingNews,
  }) {
    return fetchTrendingNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBreakingNews,
    TResult? Function()? fetchTrendingNews,
  }) {
    return fetchTrendingNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBreakingNews,
    TResult Function()? fetchTrendingNews,
    required TResult orElse(),
  }) {
    if (fetchTrendingNews != null) {
      return fetchTrendingNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchBreakingNews value) fetchBreakingNews,
    required TResult Function(_FetchTrendingNews value) fetchTrendingNews,
  }) {
    return fetchTrendingNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchBreakingNews value)? fetchBreakingNews,
    TResult? Function(_FetchTrendingNews value)? fetchTrendingNews,
  }) {
    return fetchTrendingNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchBreakingNews value)? fetchBreakingNews,
    TResult Function(_FetchTrendingNews value)? fetchTrendingNews,
    required TResult orElse(),
  }) {
    if (fetchTrendingNews != null) {
      return fetchTrendingNews(this);
    }
    return orElse();
  }
}

abstract class _FetchTrendingNews implements TrendingEvent {
  const factory _FetchTrendingNews() = _$FetchTrendingNewsImpl;
}

/// @nodoc
mixin _$TrendingState {
  List<NewsArticles> get breakingNews => throw _privateConstructorUsedError;
  List<NewsArticles> get trendingNews => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrendingStateCopyWith<TrendingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingStateCopyWith<$Res> {
  factory $TrendingStateCopyWith(
          TrendingState value, $Res Function(TrendingState) then) =
      _$TrendingStateCopyWithImpl<$Res, TrendingState>;
  @useResult
  $Res call(
      {List<NewsArticles> breakingNews,
      List<NewsArticles> trendingNews,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$TrendingStateCopyWithImpl<$Res, $Val extends TrendingState>
    implements $TrendingStateCopyWith<$Res> {
  _$TrendingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breakingNews = null,
    Object? trendingNews = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      breakingNews: null == breakingNews
          ? _value.breakingNews
          : breakingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsArticles>,
      trendingNews: null == trendingNews
          ? _value.trendingNews
          : trendingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsArticles>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TrendingStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NewsArticles> breakingNews,
      List<NewsArticles> trendingNews,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breakingNews = null,
    Object? trendingNews = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$InitialImpl(
      breakingNews: null == breakingNews
          ? _value._breakingNews
          : breakingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsArticles>,
      trendingNews: null == trendingNews
          ? _value._trendingNews
          : trendingNews // ignore: cast_nullable_to_non_nullable
              as List<NewsArticles>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required final List<NewsArticles> breakingNews,
      required final List<NewsArticles> trendingNews,
      required this.isLoading,
      required this.hasError})
      : _breakingNews = breakingNews,
        _trendingNews = trendingNews;

  final List<NewsArticles> _breakingNews;
  @override
  List<NewsArticles> get breakingNews {
    if (_breakingNews is EqualUnmodifiableListView) return _breakingNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breakingNews);
  }

  final List<NewsArticles> _trendingNews;
  @override
  List<NewsArticles> get trendingNews {
    if (_trendingNews is EqualUnmodifiableListView) return _trendingNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingNews);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'TrendingState(breakingNews: $breakingNews, trendingNews: $trendingNews, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._breakingNews, _breakingNews) &&
            const DeepCollectionEquality()
                .equals(other._trendingNews, _trendingNews) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_breakingNews),
      const DeepCollectionEquality().hash(_trendingNews),
      isLoading,
      hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements TrendingState {
  const factory _Initial(
      {required final List<NewsArticles> breakingNews,
      required final List<NewsArticles> trendingNews,
      required final bool isLoading,
      required final bool hasError}) = _$InitialImpl;

  @override
  List<NewsArticles> get breakingNews;
  @override
  List<NewsArticles> get trendingNews;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
