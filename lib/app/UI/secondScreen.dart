// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notesapp/app/UI/homeScreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Padding(
          padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.5,
              bottom: MediaQuery.of(context).size.height * 0.1,
              top: MediaQuery.of(context).size.height * 0.1),
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(MaterialPageRoute(
                    builder: ((context) => const HomeScreen(username: '',))));
              },
              child: const Icon(Icons.logout))),
      Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * 0.2),
          child: Text('Welcome to your notes',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic))),
      Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
          child: SingleChildScrollView(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                      color: Colors.black12,
                      child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: TextField(
                              maxLines: null,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                  labelText: "Enter your notes"),
                              style: TextStyle(color: Colors.white70)))))))
    ])));
  }
}
