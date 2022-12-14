part of 'index.dart';

@freezed
class GetMovie with _$GetMovie {
  const factory GetMovie(int page) = GetMovieStart;

  const factory GetMovie.successful(List<Movie> movies) = GetMovieSuccessful;

  const factory GetMovie.error(Object error, StackTrace stackTrace) = GetMovieError;
}
