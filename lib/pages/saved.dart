import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirstapp/main.dart';

class SavedPage extends StatelessWidget {
  SavedPage(this.pairs, {Key key}) : super(key: key);

  final Set<WordPair> pairs;

  @override
  Widget build(BuildContext context) {
    final Iterable<ListTile> tiles = this.pairs.map(
      (WordPair pair) {
        return ListTile(
          title: Text(
            pair.asPascalCase,
            style: biggerFont,
          ),
        );
      },
    );
    final List<Widget> divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Suggestions'),
      ),
      body: ListView(children: divided),
    );
  }
}
