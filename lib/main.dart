import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:movie_app_infinite_scroll/models/movie.dart';

void main() {
  runApp(const MovieAppInfScroll());
}

class MovieAppInfScroll extends StatelessWidget {
  const MovieAppInfScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MoviesPage(),
    );
  }
}

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  final ScrollController _controller = ScrollController();
  final List<Movie> _movie = <Movie>[];

  int _page = 1;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _getMovies();

    _controller.addListener(_onScroll);
  }

  void _onScroll() {
    final double offset = _controller.offset;
    final double maxScrollExtent = _controller.position.maxScrollExtent;

    if (offset == maxScrollExtent - MediaQuery.of(context).size.width && !_isLoading) {
      _getMovies();
    }
  }

  Future<void> _getMovies() async {
    final Response response = await get(Uri.parse('https://yts.mx/api/v2/list_movies.json?limit=20&page=$_page'));
    final Map<String, dynamic> map = jsonDecode(response.body) as Map<String, dynamic>;
    final Map<String, dynamic> data = map['data'] as Map<String, dynamic>;
    final List<Map<dynamic, dynamic>> movies = List<Map<dynamic, dynamic>>.from(data['movies'] as List<dynamic>);

    for (final Map<dynamic, dynamic> item in movies) {
      final Movie movie = Movie(
        title: item['title'] as String,
        image: item['medium_cover_image'] as String,
        year: item['year'] as int,
      );
      _movie.add(movie);
    }

    _page = _page + 1;
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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

  @override
  Widget build(BuildContext context) {
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
            if (_isLoading && _page == 1) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return CustomScrollView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      final Movie movie = _movie[index];

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20),
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
                    childCount: _movie.length,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Builder(
                    builder: (BuildContext context) {
                      if (_isLoading) {
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
            );
          },
        ),
      ),
    );
  }
}
