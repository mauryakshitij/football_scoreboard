import 'package:flutter/material.dart';
import 'package:football_scoreboard/model.dart';
import 'team_info.dart';
import 'match_tile.dart';
import 'goal_score.dart';

Widget Scoreboard(List<Match> allMatches) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TeamInfo("Local Team", allMatches[0].home.logoUrl,
                  allMatches[0].home.name),
              GoalScore(allMatches[0].fixture.status.elapsedTime,
                  allMatches[0].goal.home, allMatches[0].goal.away),
              TeamInfo("Visitor Team", allMatches[0].away.logoUrl,
                  allMatches[0].away.name),
            ],
          ),
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF4373D9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "MATCHES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allMatches.length,
                    itemBuilder: (context, index) {
                      return matchTile(allMatches[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}