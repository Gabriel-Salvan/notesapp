// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notesapp/app/UI/homeScreen.dart';

class CreateAccountScreen extends StatefulWidget {
  final String username;
  
  const CreateAccountScreen({Key? key, required this.username}): super(key: key);
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController textController = TextEditingController();
  late String username;
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void _saveUsername() {
    String username = textController.text;
    ("Username saved: $username");
    Navigator.pop(
      context,MaterialPageRoute(builder: (context) => HomeScreen(username: username),),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.03,
              left: MediaQuery.of(context).size.width * 0.03,
              right: MediaQuery.of(context).size.width * 0.03),
          child: Text(
            "Create an Account",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.06),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
            child: TextFormField(
              controller: textController,
              decoration: const InputDecoration(labelText: "Username"),
            )),
        Text("You can't change your username later on",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.02)),
        Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.03,
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03),
            child: ElevatedButton(
                onPressed: () {
                  _saveUsername();
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                              HomeScreen(username: '$username')),
                  );
                },
                child: Text("Save",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05))))
      ]),
    ));
  }
}
