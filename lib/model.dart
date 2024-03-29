class Match {
  Fixture fixture;
  Team home;
  Team away;
  Goal goal;

  Match(this.fixture, this.home, this.away, this.goal);

  factory Match.fromJson(Map<String, dynamic> json) {
    return Match(
        Fixture.fromJson(json['fixture']),
        Team.fromJson(json['teams']['home']),
        Team.fromJson(json['teams']['away']),
        Goal.fromJson(json['goals']));
  }
}

class Fixture {
  int id;
  String date;
  Status status;

  Fixture(this.id, this.date, this.status);

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(json['id'], json['date'], Status.fromJson(json['status']));
  }
}

class Status {
  int elapsedTime;
  String long;

  Status(this.elapsedTime, this.long);

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(json['elapsed'], json['long']);
  }
}

class Team {
  int id;
  String name;
  String logoUrl;
  bool? winner;

  Team(this.id, this.name, this.logoUrl, this.winner);

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(json['id'], json['name'], json['logo'], json['winner']);
  }
}

class Goal {
  int home;
  int away;

  Goal(this.home, this.away);

  factory Goal.fromJson(Map<String, dynamic> json) {
    return Goal(json['home'], json['away']);
  }
}
