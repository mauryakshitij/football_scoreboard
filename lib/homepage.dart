import 'package:flutter/material.dart';
import 'package:football_scoreboard/api.dart';
import 'package:football_scoreboard/widgets/scoreboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scoreboard", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: ScoreboardApi().getAllMatches(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Scoreboard(snapshot.data!);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
