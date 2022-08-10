import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
   ChatScreen({Key? key}) : super(key: key);
  
  List name=[
    "Akber",
    "Waseem",
    "Naveed",
    "Siltan",
    "Akber",
    "Waseem",
    "Naveed",
    "Siltan",
  ];
  List message=[
    "Hi Akber How Are You ?",
    "What Are You Doing?",
    "What is The Day",
    "Where are you man?",
    "Hi Akber How Are You ?",
    "What Are You Doing?",
    "What is The Day",
    "Where are you man?",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:name.length ,
        itemBuilder: (BuildContext context,i){
        return Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text(name[i]),
              subtitle: Text(message[i]),
              trailing: const Text("10:33 pm",style: TextStyle(color: Colors.black),),
            ),const Divider()
          ],
        );
        });
  }
}
