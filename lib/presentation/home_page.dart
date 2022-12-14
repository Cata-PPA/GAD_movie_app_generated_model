import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movie_app_infinite_scroll/actions/index.dart';
import 'package:movie_app_infinite_scroll/models/index.dart';
import 'package:redux/redux.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          content: Text(
            'Thank you for your purchase',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }

  final ScrollController _controller = ScrollController();
  late Store<AppState> _store;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
    _store = StoreProvider.of<AppState>(context, listen: false);
  }

  void _onScroll() {
    final double offset = _controller.offset;
    final double maxScrollExtent = _controller.position.maxScrollExtent;

    if (offset > maxScrollExtent - MediaQuery.of(context).size.width && !_store.state.isLoading) {
      _store.dispatch(GetMovie(_store.state.page));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: (BuildContext context, AppState state) {
        final List<Movie> movies = state.movies;
        final bool isLoading = state.isLoading;
        return Scaffold(
          backgroundColor: Colors.cyan,
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: const Text(
              'Movies',
            ),
          ),
          body: SafeArea(
            child: Builder(
              builder: (BuildContext context) {
                return RefreshIndicator(
                  onRefresh: () async {
                    store.dispatch(const GetMovie(1));

                    await _store.onChange.where((AppState state) => !state.isLoading).first;
                  },
                  child: CustomScrollView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    slivers: <Widget>[
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            if (movies.length == index) {
                              if (isLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            }

                            final Movie movie = movies[index];

                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: GestureDetector(
                                    onTap: () {
                                      store.dispatch(SetSelectedMovie(movie));
                                      Navigator.pushNamed(context, '/movieDetails');
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width / 1.2,
                                      height: MediaQuery.of(context).size.height / 1.7,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                          image: NetworkImage(movie.image),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Text(
                                    movie.title,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    '${movie.year}',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: TextButton(
                                    style: TextButton.styleFrom(backgroundColor: Colors.grey),
                                    onPressed: () {
                                      _dialogBuilder(context);
                                    },
                                    child: const Text(
                                      'Buy this movie',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                          childCount: movies.length,
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Builder(
                          builder: (BuildContext context) {
                            if (isLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
