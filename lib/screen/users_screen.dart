import 'package:flutter/material.dart';
import 'package:githubProfile/models/user_model.dart';
import 'package:githubProfile/services/github_service.dart';

class UsersList extends StatelessWidget {

  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        backgroundColor: Colors.black,
        title: Text('Users List', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: httpService.getUsers(),
        builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
          if(snapshot.hasData) {
            List<User> users = snapshot.data;

            return ListView(
              children: users.map((User user) => Container(
                color: Colors.blue,
//                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                height: 150,
                child:
                  Card(
                    shadowColor: Colors.white,
                    elevation: 30.0,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(user.avatarUrl),
                          ),
                          title: Text(user.login, style: TextStyle(fontSize: 25.0),),
                          subtitle: Text('${user.name}'),
                          trailing: Column(
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.yellow,),
                              Text('stars')
                            ],
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(''),
                                ),
                                Text('Repository')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text('${user.followers}'),
                                ),
                                Text('Followers')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text('${user.following}'),
                                ),
                                Text('Following')
                              ],
                            )
                          ],
                        )
                      ],
                    )
                ),
              )).toList(),
            );
          }
          return Center(child: CircularProgressIndicator());
        },

      ),
    );
  }
}
