import 'dart:convert';

import 'package:http/http.dart';
import 'model.dart';

class ScoreboardApi {
  final String apiUrl = "https://v3.football.api-sports.io/fixtures?season=2022&league=39";
  static const Map<String, String> headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "95465829619308099f72ce1cfb3200ee"
  };

  Future<List<Match>> getAllMatches() async {
    Response res = await get(Uri.parse(apiUrl), headers: headers);
    List<Match> matchesList = [];
    // print(res.body);
    if (res.statusCode == 200) {
      // this mean that we are connected to the data base
      var body = jsonDecode(res.body);
      // print(body['response']);
      List<dynamic> matchList = body['response'];
      // print("Api service: ${matchList[1]}"); // to debug
      // print(Match.fromJson(matchList[1]));
      // print(matchList);
      List<Match> matches = [];
      for(var i=0; i<matchList.length;i++)
        {
          matches.add(Match.fromJson(matchList[i]));
        }
      // print("Here ${matches.length}");
      return matches;
    }
    return matchesList;
  }
}
