import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StartUp Name Generator',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RandomWordState();
}

class RandomWordState extends State<RandomWords> {
  final wordPair = new WordPair.random();
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _saved = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    // return new Text(wordPair.asPascalCase);
    void _pushSaved() {
      Navigator.of(context).push(
        new MaterialPageRoute(
          builder: (context) {
            final tiles = _saved.map((wordPair) {
              return new ListTile(
                title: new Text(
                  wordPair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            });
            final divided = ListTile.divideTiles(
              tiles: tiles,
              context: context,
            ).toList();
            return new Scaffold(
              appBar: new AppBar(
                title: new Text("Saved Suggestions"),
              ),
              body: new ListView(
                children: divided,
              ),
            );
          },
        ),
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('StartUp Name Generator'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair wordPair) {
    final _alreadySaved = _saved.contains(wordPair);
    return new ListTile(
      title: new Text(
        wordPair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        _alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: _alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (_alreadySaved) {
            _saved.remove(wordPair);
          } else {
            _saved.add(wordPair);
          }
        });
      },
    );
  }
}
