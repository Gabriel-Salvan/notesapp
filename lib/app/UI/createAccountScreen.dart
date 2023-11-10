// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notesapp/app/UI/homeScreen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {

  TextEditingController textController = TextEditingController();
@override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
void _saveUsername() {
    String username = textController.text;
    ("Username saved: $username");
}

  @override
  Widget build(BuildContext context){
    return
    Scaffold(
      body:
      SingleChildScrollView(
        child: Column(children: [
          Padding(padding: EdgeInsets.only(
              top:MediaQuery.of(context).size.width*0.03,
              left:MediaQuery.of(context).size.width*0.03,
              right: MediaQuery.of(context).size.width*0.03),
            child: Text("Create an Account",
              style: TextStyle(
                color:Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width*0.06),),),
          Padding(padding: EdgeInsets.all(
            MediaQuery.of(context).size.width*0.03),
                  child:TextFormField(
                    controller: textController,
                    decoration: const InputDecoration(
                      labelText: "Username"),)),
          Text("You can't change your username later on", 
           style: TextStyle(
            color: Colors.black, 
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width*0.02)),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.03,
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03),
            child: ElevatedButton(
                onPressed: () {
                  _saveUsername();
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const HomeScreen()),);
                },
                child: Text("Save",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05))))
        ]),)
    )
    ;
  }
}