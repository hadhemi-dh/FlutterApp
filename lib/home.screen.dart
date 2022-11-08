import 'package:exam/game.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:exam/team.service.dart';
import 'package:exam/team.component.dart';
import 'package:exam/TeamApiModel.dart';
import 'package:exam/game.component.dart';
import 'GameApiModel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: "GAME"),
                Tab(text: "TEAMS"),
              ],
            ),
            title: const Text('FootBall App'),
          ),
          body: TabBarView(children: [Game(context), content(context)]),
        ),
      ),
    );
  }

  Widget content(BuildContext context) {
    final service = TeamService();
    return FutureBuilder<TeamApiModel>(
      builder: (context, snapdata) {
        if (snapdata.hasData) {
          return ListView.builder(
            itemCount: snapdata.data?.data?.length,
            itemBuilder: (context, index) {
              return TeamComponent(
                  snapdata.data?.data![index].fullName ?? "",
                  snapdata.data?.data![index].city ?? "",
                  snapdata.data?.data![index].division ?? "",
                  snapdata.data?.data![index].name ?? "",
                  snapdata.data?.data![index].conference ?? "");
            },
          );
        } else
          return CircularProgressIndicator();
      },
      future: service.fetchTeams(),
    );
  }

  Widget Game(BuildContext context) {
    final service = GameService();
    service.fetchGames().then((value) => print(value.data?.first.date));
    return FutureBuilder<GameApiModel>(
      builder: (context, datato) {
        if (datato.hasData) {
          return ListView.builder(
            itemCount: datato.data?.data?.length,
            itemBuilder: (context, index) {
              return GameComponent(
                datato.data?.data![index].date ?? "",
                datato.data?.data![index].homeTeam?.name ?? "",
                datato.data?.data![index].homeTeam?.abbreviation ?? "",
                datato.data?.data![index].homeTeamScore.toString() ?? "",
                datato.data?.data![index].status ?? "",
                datato.data?.data![index].visitorTeam?.name ?? "",
                datato.data?.data![index].visitorTeam?.abbreviation ?? "",
                datato.data?.data![index].visitorTeamScore.toString() ?? "",
              );
            },
          );
        } else
          return CircularProgressIndicator();
      },
      future: service.fetchGames(),
    );
  }
}
