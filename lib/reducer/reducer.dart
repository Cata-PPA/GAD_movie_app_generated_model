import 'package:movie_app_infinite_scroll/actions/index.dart';
import 'package:movie_app_infinite_scroll/models/index.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetMovieStart>(_getMovieStart),
  TypedReducer<AppState, GetMovieSuccessful>(_getMovieSuccessful),
  TypedReducer<AppState, GetMovieError>(_getMovieError),
  TypedReducer<AppState, SetSelectedMovie>(_setSelectedMovie),
]);

AppState _getMovieStart(AppState state, GetMovieStart action) {
  return state.copyWith(isLoading: true, page: state.page + 1);
}

AppState _getMovieSuccessful(AppState state, GetMovieSuccessful action) {
  return state.copyWith(
    isLoading: false,
    page: state.page + 1,
    movies: <Movie>[
      if (state.page != 1) ...state.movies,
      ...action.movies,
    ],
  );
}

AppState _getMovieError(AppState state, GetMovieError action) {
  return state.copyWith(
    isLoading: false,
  );
}

AppState _setSelectedMovie(AppState state, SetSelectedMovie action) {
  return state.copyWith(
    selectedMovie: action.movie,
  );
}
