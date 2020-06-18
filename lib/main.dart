import 'package:flutter/material.dart';
import 'package:flutterfirstapp/pages/suggestion.dart';

final TextStyle biggerFont = const TextStyle(fontSize: 18);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.orange,
      ),
      home: SuggestionPage(),
    );
  }
}
