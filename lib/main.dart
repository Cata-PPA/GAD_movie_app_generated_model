import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:movie_app_infinite_scroll/actions/index.dart';
import 'package:movie_app_infinite_scroll/data/movie_api.dart';
import 'package:movie_app_infinite_scroll/epics/app_epics.dart';
import 'package:movie_app_infinite_scroll/models/index.dart';
import 'package:movie_app_infinite_scroll/presentation/details_page.dart';
import 'package:movie_app_infinite_scroll/presentation/home_page.dart';
import 'package:movie_app_infinite_scroll/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<void> main() async {
  final Client client = Client();
  final MovieApi api = MovieApi(client);
  final AppEpics epics = AppEpics(api);
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epic),
    ],
  )..dispatch(const GetMovie(1));

  runApp(MovieAppInfScroll(store: store));
}

class MovieAppInfScroll extends StatelessWidget {
  const MovieAppInfScroll({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: MoviesPage(),
        routes: <String, WidgetBuilder>{
          '/movieDetails': (BuildContext context) {
            return const DetailsPage();
          },
        },
      ),
    );
  }
}
