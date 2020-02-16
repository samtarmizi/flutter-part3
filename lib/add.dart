import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final namecontroller = TextEditingController();
  final descriptioncontroller = TextEditingController();
  final datecontroller = TextEditingController();
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
            controller: namecontroller,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter item description"
            ),
            controller: descriptioncontroller,
          ),
          TextField(
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              hintText: "Enter item date"
            ),
            controller: datecontroller,
          ),
          FlatButton(
            onPressed: (){
              //Navigator.pop(context);
              print(" Name ${namecontroller.text} Description ${descriptioncontroller.text} Date ${datecontroller.text}");
            }, 
            child: Text("Save")
          )
        ],)
      ),
      
    );
  }
}