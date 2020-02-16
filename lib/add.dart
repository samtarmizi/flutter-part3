import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Item")
      ),
      body: Container(
        child: Column(children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Enter item name"
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter item description"
            ),
          ),
          TextField(
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              hintText: "Enter item date"
            ),
          ),
          FlatButton(
            onPressed: (){
              //Navigator.pop(context);
            }, 
            child: Text("Save")
          )
        ],)
      ),
      
    );
  }
}