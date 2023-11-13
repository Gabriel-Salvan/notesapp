// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'createAccountScreen.dart';
import 'secondScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  bool isButtonEnabled = false;

  void _validateInput(String text) {
    setState(() {
      isButtonEnabled = false;
      String specificText = "";
      isButtonEnabled = text == specificText;
    });
  }

  void _onButtonPressed() {
    if (isButtonEnabled) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
          child: Text('Notes APP',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width * 0.09,
                  fontStyle: FontStyle.italic))),
      SizedBox(height: MediaQuery.of(context).size.height * 0.2),
      Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                  color: Colors.black12,
                  child: Padding(
                      padding: const EdgeInsets.all(0.1),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: ('Input UserName'),
                            icon: Icon(Icons.person)),
                        style: const TextStyle(color: Colors.white70),
                        controller: _textEditingController,
                        onChanged: _validateInput,
                      ))))),
      SizedBox(height: MediaQuery.of(context).size.height * 0.1),
      ElevatedButton(
          onPressed: isButtonEnabled ? _onButtonPressed : null,
          child: Text('Login',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontStyle: FontStyle.italic))),
      SizedBox(height: MediaQuery.of(context).size.height * 0.1),
      ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CreateAccountScreen()));
          },
          child: Text('Create Account',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontStyle: FontStyle.italic))),
      SizedBox(height: MediaQuery.of(context).size.height * 0.1),
    ]));
  }
}
