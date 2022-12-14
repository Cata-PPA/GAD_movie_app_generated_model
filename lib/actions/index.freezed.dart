// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetMovie {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int page) $default, {
    required TResult Function(List<Movie> movies) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int page)? $default, {
    TResult? Function(List<Movie> movies)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int page)? $default, {
    TResult Function(List<Movie> movies)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMovieStart value) $default, {
    required TResult Function(GetMovieSuccessful value) successful,
    required TResult Function(GetMovieError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetMovieStart value)? $default, {
    TResult? Function(GetMovieSuccessful value)? successful,
    TResult? Function(GetMovieError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMovieStart value)? $default, {
    TResult Function(GetMovieSuccessful value)? successful,
    TResult Function(GetMovieError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMovieCopyWith<$Res> {
  factory $GetMovieCopyWith(GetMovie value, $Res Function(GetMovie) then) = _$GetMovieCopyWithImpl<$Res, GetMovie>;
}

/// @nodoc
class _$GetMovieCopyWithImpl<$Res, $Val extends GetMovie> implements $GetMovieCopyWith<$Res> {
  _$GetMovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMovieStartCopyWith<$Res> {
  factory _$$GetMovieStartCopyWith(_$GetMovieStart value, $Res Function(_$GetMovieStart) then) =
      __$$GetMovieStartCopyWithImpl<$Res>;

  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$GetMovieStartCopyWithImpl<$Res> extends _$GetMovieCopyWithImpl<$Res, _$GetMovieStart>
    implements _$$GetMovieStartCopyWith<$Res> {
  __$$GetMovieStartCopyWithImpl(_$GetMovieStart _value, $Res Function(_$GetMovieStart) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$GetMovieStart(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetMovieStart implements GetMovieStart {
  const _$GetMovieStart(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'GetMovie(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieStart &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieStartCopyWith<_$GetMovieStart> get copyWith =>
      __$$GetMovieStartCopyWithImpl<_$GetMovieStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int page) $default, {
    required TResult Function(List<Movie> movies) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int page)? $default, {
    TResult? Function(List<Movie> movies)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int page)? $default, {
    TResult Function(List<Movie> movies)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMovieStart value) $default, {
    required TResult Function(GetMovieSuccessful value) successful,
    required TResult Function(GetMovieError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetMovieStart value)? $default, {
    TResult? Function(GetMovieSuccessful value)? successful,
    TResult? Function(GetMovieError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMovieStart value)? $default, {
    TResult Function(GetMovieSuccessful value)? successful,
    TResult Function(GetMovieError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetMovieStart implements GetMovie {
  const factory GetMovieStart(final int page) = _$GetMovieStart;

  int get page;

  @JsonKey(ignore: true)
  _$$GetMovieStartCopyWith<_$GetMovieStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMovieSuccessfulCopyWith<$Res> {
  factory _$$GetMovieSuccessfulCopyWith(_$GetMovieSuccessful value, $Res Function(_$GetMovieSuccessful) then) =
      __$$GetMovieSuccessfulCopyWithImpl<$Res>;

  @useResult
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$$GetMovieSuccessfulCopyWithImpl<$Res> extends _$GetMovieCopyWithImpl<$Res, _$GetMovieSuccessful>
    implements _$$GetMovieSuccessfulCopyWith<$Res> {
  __$$GetMovieSuccessfulCopyWithImpl(_$GetMovieSuccessful _value, $Res Function(_$GetMovieSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$GetMovieSuccessful(
      null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$GetMovieSuccessful implements GetMovieSuccessful {
  const _$GetMovieSuccessful(final List<Movie> movies) : _movies = movies;

  final List<Movie> _movies;

  @override
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'GetMovie.successful(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieSuccessful &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieSuccessfulCopyWith<_$GetMovieSuccessful> get copyWith =>
      __$$GetMovieSuccessfulCopyWithImpl<_$GetMovieSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int page) $default, {
    required TResult Function(List<Movie> movies) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int page)? $default, {
    TResult? Function(List<Movie> movies)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int page)? $default, {
    TResult Function(List<Movie> movies)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMovieStart value) $default, {
    required TResult Function(GetMovieSuccessful value) successful,
    required TResult Function(GetMovieError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetMovieStart value)? $default, {
    TResult? Function(GetMovieSuccessful value)? successful,
    TResult? Function(GetMovieError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMovieStart value)? $default, {
    TResult Function(GetMovieSuccessful value)? successful,
    TResult Function(GetMovieError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMovieSuccessful implements GetMovie {
  const factory GetMovieSuccessful(final List<Movie> movies) = _$GetMovieSuccessful;

  List<Movie> get movies;

  @JsonKey(ignore: true)
  _$$GetMovieSuccessfulCopyWith<_$GetMovieSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMovieErrorCopyWith<$Res> {
  factory _$$GetMovieErrorCopyWith(_$GetMovieError value, $Res Function(_$GetMovieError) then) =
      __$$GetMovieErrorCopyWithImpl<$Res>;

  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetMovieErrorCopyWithImpl<$Res> extends _$GetMovieCopyWithImpl<$Res, _$GetMovieError>
    implements _$$GetMovieErrorCopyWith<$Res> {
  __$$GetMovieErrorCopyWithImpl(_$GetMovieError _value, $Res Function(_$GetMovieError) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetMovieError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetMovieError implements GetMovieError {
  const _$GetMovieError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetMovie.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieErrorCopyWith<_$GetMovieError> get copyWith =>
      __$$GetMovieErrorCopyWithImpl<_$GetMovieError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int page) $default, {
    required TResult Function(List<Movie> movies) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int page)? $default, {
    TResult? Function(List<Movie> movies)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int page)? $default, {
    TResult Function(List<Movie> movies)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetMovieStart value) $default, {
    required TResult Function(GetMovieSuccessful value) successful,
    required TResult Function(GetMovieError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetMovieStart value)? $default, {
    TResult? Function(GetMovieSuccessful value)? successful,
    TResult? Function(GetMovieError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetMovieStart value)? $default, {
    TResult Function(GetMovieSuccessful value)? successful,
    TResult Function(GetMovieError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMovieError implements GetMovie {
  const factory GetMovieError(final Object error, final StackTrace stackTrace) = _$GetMovieError;

  Object get error;

  StackTrace get stackTrace;

  @JsonKey(ignore: true)
  _$$GetMovieErrorCopyWith<_$GetMovieError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetSelectedMovie {
  Movie get movie => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedMovieCopyWith<SetSelectedMovie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedMovieCopyWith<$Res> {
  factory $SetSelectedMovieCopyWith(SetSelectedMovie value, $Res Function(SetSelectedMovie) then) =
      _$SetSelectedMovieCopyWithImpl<$Res, SetSelectedMovie>;

  @useResult
  $Res call({Movie movie});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class _$SetSelectedMovieCopyWithImpl<$Res, $Val extends SetSelectedMovie> implements $SetSelectedMovieCopyWith<$Res> {
  _$SetSelectedMovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_value.copyWith(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetSelectedMovie$CopyWith<$Res> implements $SetSelectedMovieCopyWith<$Res> {
  factory _$$SetSelectedMovie$CopyWith(_$SetSelectedMovie$ value, $Res Function(_$SetSelectedMovie$) then) =
      __$$SetSelectedMovie$CopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({Movie movie});

  @override
  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$SetSelectedMovie$CopyWithImpl<$Res> extends _$SetSelectedMovieCopyWithImpl<$Res, _$SetSelectedMovie$>
    implements _$$SetSelectedMovie$CopyWith<$Res> {
  __$$SetSelectedMovie$CopyWithImpl(_$SetSelectedMovie$ _value, $Res Function(_$SetSelectedMovie$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$SetSelectedMovie$(
      null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$SetSelectedMovie$ implements SetSelectedMovie$ {
  const _$SetSelectedMovie$(this.movie);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'SetSelectedMovie(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedMovie$ &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedMovie$CopyWith<_$SetSelectedMovie$> get copyWith =>
      __$$SetSelectedMovie$CopyWithImpl<_$SetSelectedMovie$>(this, _$identity);
}

abstract class SetSelectedMovie$ implements SetSelectedMovie {
  const factory SetSelectedMovie$(final Movie movie) = _$SetSelectedMovie$;

  @override
  Movie get movie;

  @override
  @JsonKey(ignore: true)
  _$$SetSelectedMovie$CopyWith<_$SetSelectedMovie$> get copyWith => throw _privateConstructorUsedError;
}
