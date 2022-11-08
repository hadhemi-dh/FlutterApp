import 'package:dio/dio.dart';
import 'package:exam/GameApiModel.dart';

class GameService {
  Future <GameApiModel> fetchGames() async {
    var dio = Dio();
    final game = await dio.get('http://www.mocky.io/v2/5de8d38a3100000f006b1479');
    return GameApiModel.fromJson(game.data) ;
  }
}