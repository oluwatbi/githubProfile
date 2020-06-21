import 'package:flutter/foundation.dart';

class User {
  final int id;
  final String login;
  final String name;
  final String avatarUrl;
  final String reposUrl;
  final int following;
  final int followers;

  User({
    @required this.id,
    @required this.login,
    @required this.name,
    @required this.avatarUrl,
    @required this.reposUrl,
    @required this.following,
    @required this.followers,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      login: json['login'] as String,
      name: json['name'] as String,
      avatarUrl: json['avatar_url'] as String,
      reposUrl: json['repos_url'] as String,
      following: json['following'] as int,
      followers: json['followers'] as int
    );
  }
}