import 'package:flutter/material.dart';

Widget GoalScore(int elapsedTime, int homeGoal, int awayGoal) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$elapsedTime'",
          style: const TextStyle(
            fontSize: 30.0,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              "${homeGoal ?? 0} - ${awayGoal ?? 0}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 36.0,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
