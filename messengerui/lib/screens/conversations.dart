// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';

class Conversations extends StatefulWidget {
  const Conversations({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = new TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: ListView(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                  Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image:
                              NetworkImage('https://picsum.photos/200/300.jpg'),
                          fit: BoxFit.cover)),
                ),
                Text(
                  "Chats",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.edit)
              ]),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xFFe9eaec),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  cursorColor: Color(0xFF000000),
                  controller: _searchController,
                  decoration: InputDecoration(
                      prefix: Icon(
                        Icons.search,
                        color: Color(0xFF000000).withOpacity(0.5),
                      ),
                      hintText: "Search",
                      border: InputBorder.none),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
