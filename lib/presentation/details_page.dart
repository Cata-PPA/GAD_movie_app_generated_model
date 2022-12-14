import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:movie_app_infinite_scroll/models/index.dart';
import 'package:redux/redux.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Movie>(
      converter: (Store<AppState> store) => store.state.selectedMovie!,
      builder: (BuildContext context, Movie movie) {
        return Scaffold(
          appBar: AppBar(
            title: Text('${movie.title} (${movie.year})'),
          ),
          body: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  movie.summary,
                ),
              ),
              for (final Torrent torrent in movie.torrents)
                ListTile(
                  title: Text(
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    torrent.quality,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
