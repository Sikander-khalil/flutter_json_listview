import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json/models/user_model.dart';
import 'package:http/http.dart' as http;

class User {
  final int id;
  final String userName;
  final String password;

  User({required this.id, required this.userName, required this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      userName: json['userName'],
      password: json['password'],
    );
  }
}

class MyListview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UserResponse>(
      future: _fetchJobs(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          UserResponse? data = snapshot.data;
          return showList(data!);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<UserResponse> _fetchJobs() async {


    final url =
        'https://rosterinsight.com/api/v1/Authentication/auth?Email=ahsan@gmail.com&Password=admin&IsWebCall=true';
    final response = await http.get(Uri.parse(url));
    print("response: " + response.body.toString());
    if (response.statusCode == 200) {


       return UserResponse.fromJson(json.decode(response.body));

    } else {
      print("our response error");
      throw Exception('Failed to load jobs from API');
    }
  }

  showList(UserResponse data) {

    return
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${data.user!.userName}"),

          Text("${data.user!.password}"),
        ],
      );
  }
}
