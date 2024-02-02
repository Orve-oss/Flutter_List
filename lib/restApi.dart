import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class RestApp extends StatelessWidget {
  const RestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RestApi(),
    );
  }
}


class RestApi extends StatefulWidget {
  const RestApi({super.key});

  @override
  State<RestApi> createState() => _RestApiState();
}

class _RestApiState extends State<RestApi> {
  String userData = "Empty";
  dynamic dynamicUsersData;
  void _getGithubUser(){
    String url = "https://api.github.com/search/users?q=kader&per_page=5&page=2";
    http.get(Uri.parse(url)).then((response){
      setState(() {
        dynamicUsersData =  json.decode(response.body);
        //userData = response.body;
        //print(userData);
      });
    }).catchError((error){
      print(error);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Rest API"),
        backgroundColor: Colors.blue.shade500, foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {_getGithubUser();}, child: const Text("Afficher "),),
            const SizedBox( height: 30,),
            Expanded(child: ListView.builder(
              itemCount: dynamicUsersData == null ? 0 : dynamicUsersData['items'].length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Row(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        dynamicUsersData['items'][index]['avatar_url'],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(dynamicUsersData['items'][index]['login'].toUpperCase()),
                  ]),
                );
              },
            ))
          ],
        ),
      ),
    );
  }

  githubUserList(int index) {}
}
