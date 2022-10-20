import 'package:flutter/material.dart';
import 'package:mylegendteam/teamitem.dart';

import 'data/data.dart';
import 'model/team.dart';

class TeamList extends StatelessWidget {
  late List<Team> allPlayers;
  TeamList({super.key}) {
    allPlayers = getAllSource();
    print("all: $allPlayers");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellowAccent.shade100,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: Text("My Legend Team",
              style: TextStyle(
                  color: Colors.red[600], fontWeight: FontWeight.w800)),
        ),
        body: Center(
          child: ListView.builder(
              itemBuilder: (context, index) {
                return TeamItem(listPlayer: allPlayers[index]);
              },
              itemCount: allPlayers.length),
        ));
  }

  List<Team> getAllSource() {
    List<Team> tempTeam = [];
    for (int i = 0; i < 11; i++) {
      var playerNames = Strings.Footballer_Name[i];
      var playerIdols = Strings.Footballer_IdolPlayer[i];
      var playerAges = Strings.Footballer_Age[i];
      var playerDetails = Strings.Footballer_Detail[i];
      var playerImages = Strings.Footballer_Img[i];
      var playerVideos = Strings.Footballer_Video[i];
      var playerFavs = Strings.Footballer_PlayerFav[i];

      Team team = Team(playerNames, playerIdols, playerAges, playerDetails,
          playerImages, playerVideos, playerFavs);
      tempTeam.add(team);
    }
    return tempTeam;
  }
}
