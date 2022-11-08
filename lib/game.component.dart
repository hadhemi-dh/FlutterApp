import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'GameApiModel.dart';

class GameComponent extends StatelessWidget {
  const GameComponent(
      this.date,
      this.homeTeam,
      this.homeTeamabr,
      this.homeTeamScore,
      this.status,
      this.visitorTeam,
      this.visitorTeamabr,
      this.visitorTeamScore);

  final String date;

  final String homeTeam;

  final String homeTeamabr;

  final String visitorTeamScore;

  final String status;

  final String visitorTeam;

  final String visitorTeamabr;

  final String homeTeamScore;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [Text(homeTeam), Text(homeTeamabr)]),
            Column(
              children: [
                Text(date),
                Center(
                  child: Container(
                    height: 40,
                    width: 60,
                    child: Card(color :Colors.green,

                    child: Center(child: Text(homeTeamScore + '-' + visitorTeamScore))),
                  ),
                ),
                Text(status)
              ],
            ),
            Column(
              children: [Text(visitorTeam), Text(visitorTeamabr)],
            )
          ],
        ),
      ),
    );
  }

  Widget TitleText(String content) {
    return Text(content,
        textAlign: TextAlign.left,
        style: GoogleFonts.roboto(
            textStyle: TextStyle(fontSize: 25), color: Colors.black));
  }

  Widget InfoText(String content) {
    return Text(content,
        textAlign: TextAlign.left,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(fontSize: 15),
          color: Colors.grey,
        ));
  }
}
