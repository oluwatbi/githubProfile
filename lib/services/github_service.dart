//import 'package:dio/dio.dart';
//import 'package:github/github.dart';

import 'dart:convert';

import 'package:githubProfile/models/user_model.dart';
import 'package:http/http.dart' as http;

class HttpService {
  final String githubUrl = "https://api.github.com/users";

  Future<List<User>> getUsers() async {
    http.Response res = await http.get(githubUrl);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<User> users =
        body.map((dynamic item) => User.fromJson(item)).toList();
      return users;
    } else {
      throw Exception('Failed to load github profile');
    }
  }
}

//class GithubServices {
//  GithubServices(this.dio, this.github);
//
//  final Dio dio;
//  final GitHub github;
//
//  Future<User> userAccess(String token) async {
//    Response response = await dio.get('https://api.github.com');
//    option:
//    Options(
//        headers: <String, dynamic>{'Authorization': 'token $token'},
//        responseType: ResponseType.json
//
////        return User.fromJson(input)
//    );
//  }
//}