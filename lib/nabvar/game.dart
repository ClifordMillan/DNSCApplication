import 'package:flutter/material.dart';
import 'package:flutterproject/ui/pages/startup_page.dart';
import 'package:flutterproject/nabvar/event.dart';

class Game extends StatefulWidget {
  const Game ({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const StartUpPage(),
      title: 'The MemoryMatch Game',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
