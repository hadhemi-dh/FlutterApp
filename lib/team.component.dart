import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TeamComponent extends StatelessWidget {
  const TeamComponent(
      this.teamName,
      this.city,
      this.division,
      this.name,
      this.conference,
      );

  final String teamName;
  final String city;
  final String division;
  final String name;
  final String conference;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [TitleText(teamName), InfoText('City:'+city), InfoText('Divison:'+division)]),
          Column(

            children: [
              InfoText('Name:'+name),
              InfoText('Conference:'+conference),
            ],
          ),
        ],
      ),
    );
  }
  Widget TitleText(String content) {
    return Text(
        content, textAlign: TextAlign.left,
        style: GoogleFonts.roboto(
            textStyle: TextStyle(fontSize: 25),
            color: Colors.black
        )
    );
  }
  Widget InfoText(String content) {
    return Text(
        content, textAlign: TextAlign.left,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(fontSize: 15),
          color: Colors.grey,
        )
    );
  }
}
