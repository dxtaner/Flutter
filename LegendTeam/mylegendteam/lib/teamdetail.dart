import 'package:flutter/material.dart';
import 'package:mylegendteam/model/team.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TeamDetail extends StatefulWidget {
  final Team team;
  const TeamDetail({required Team this.team, Key? key}) : super(key: key);

  @override
  State<TeamDetail> createState() => _TeamDetailState();
}

class _TeamDetailState extends State<TeamDetail> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "zqwUIjjtuZs",
      flags: const YoutubePlayerFlags(autoPlay: true, mute: false));
  Color appBarColour = Colors.black87;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    appBarFoundColour();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: appBarColour,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.team.playerImage,
              ),
              centerTitle: true,
              title: Text(
                widget.team.playerName,
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.red.shade700,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(children: [
              Container(
                margin: EdgeInsets.all(12),
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Text(
                    widget.team.playerDetail,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: SingleChildScrollView(
                  child: Text(
                    "İdolu: " +
                        widget.team.idolPlayer.toString() +
                        ", Favori Futbolcuları: " +
                        widget.team.favPlayers.toString(),
                    style: TextStyle(
                        fontSize: 16, color: Colors.amberAccent.shade700),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.black12,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  void appBarFoundColour() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage(widget.team.playerImage));
    appBarColour = _generator.dominantColor!.color;
    setState(() {});
    print(appBarColour);
  }
}
