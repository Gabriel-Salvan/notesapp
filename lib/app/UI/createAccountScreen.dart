// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notesapp/app/UI/homeScreen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  _TextSaverWidgetState createState() => _TextSaverWidgetState();
}

class _TextSaverWidgetState extends State<CreateAccountScreen> {
  String savedText = "";

  TextEditingController textController = TextEditingController();

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
                    decoration: const InputDecoration(
                      labelText: "Username"),)),
          Text("You can't change your username later on", 
           style: TextStyle(
            color: Colors.black, 
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width*0.02)),
          Padding(padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.03,
              left: MediaQuery.of(context).size.width * 0.03,
              right:MediaQuery.of(context).size.width*0.03),
            child:ElevatedButton(onPressed: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));},
              child: Text("Return",
                style:TextStyle(
                  fontSize:MediaQuery.of(context).size.width*0.05)))),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.03,
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03),
            child: ElevatedButton(
                onPressed: () {setState(() {
                savedText = textController.text;});},
                child: Text("Save",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05))))
        ]),)
    )
    ;
  }
}

Widget Test(){
  return Text("test");
}