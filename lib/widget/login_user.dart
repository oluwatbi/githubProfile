import 'package:flutter/material.dart';
//import 'package:githubProfile/screen/users_screen.dart';
//import 'package:githubProfile/services/github_service.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//final GithubServices githubServices = GithubServices();
void _getUser(){
  print('get access to profile');
}
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 1000.0,
        height: 1000,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 100.0,),
              Container(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 70.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/images/octocat.png'),
                    ),
                    SizedBox(height: 15.0,),
                    Text('Github Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50.0,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person, color: Colors.white60,),
                        border: InputBorder.none,
                        hintText: 'Github Username',
                        hintStyle: TextStyle(
                            color: Colors.white60
                        ),
                      ),
                      style: TextStyle(color: Colors.white60,),
                    ),

                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key, color: Colors.white60,),
                        border: InputBorder.none,
                        hintText: 'Github Password',
                        hintStyle: TextStyle(
                            color: Colors.white60
                        ),
                      ),
                      style: TextStyle(color: Colors.white60,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              MaterialButton(
                child: Align(
                  child: Text('Get Access to your profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
//                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UsersList()));
//                },
                padding: EdgeInsets.all(25.0),
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
