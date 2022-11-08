import 'package:dio/dio.dart';
import 'package:exam/TeamApiModel.dart';

class TeamService {
  Future <TeamApiModel> fetchTeams() async {
    var dio = Dio();
final response = await dio.get('http://www.mocky.io/v2/5de8d40d31000074006b1487');
return TeamApiModel.fromJson(response.data) ;
  }
}