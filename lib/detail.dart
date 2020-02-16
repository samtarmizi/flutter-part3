import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {
  final String name;
  final String description;
  final String date;

  const DetailPage(this.name, this.description, this.date);
  
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page")
      ),
      body: Container(
        child: Column(children: <Widget>[
          Text('${widget.name}'),
          Text('${widget.description}'),
          Text('${widget.date}')
        ],)
      ),
      
    );
  }
}