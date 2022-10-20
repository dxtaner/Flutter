import 'package:flutter/material.dart';
import 'package:mylegendteam/teamdetail.dart';

import 'model/team.dart';

class TeamItem extends StatelessWidget {
  final Team listPlayer;
  static final int now = DateTime.now().year;
  // ignore: prefer_const_constructors_in_immutables
  TeamItem({required this.listPlayer, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
      child: Column(children: [
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => TeamDetail(
                  team: listPlayer,
                ),
              ),
            );
          },
          leading: Image.asset(
            listPlayer.playerImage,
            width: 64,
            height: 64,
          ),
          title: Text(
            listPlayer.playerName,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 48,
                fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            (now - int.parse(listPlayer.playerAge)).toString() +
                " Yaşında-İdolü: " +
                listPlayer.idolPlayer.toString(),
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.end,
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: Colors.red[900],
          ),
        ),
      ]),
    );
  }
}
