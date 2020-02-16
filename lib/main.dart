import 'package:flutter/material.dart';
import 'package:todo_app/add.dart';
import 'package:todo_app/detail.dart';
import 'package:todo_app/model/todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Todo> items = [];
  @override
  Widget build(BuildContext context) {

    items = List.generate(10, (i) {
      return Todo("Item $i", "Description $i", "Date");
    });

    return Scaffold(
      appBar: AppBar(title: Text("Todo App")),
      body: _generateListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (builder) => AddPage()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }

  _generateListView() {
    return ListView.builder(
      itemBuilder: (BuildContext contex, int index) {
        return Card(
            child: ListTile(
          title: Text(items[index].itemName),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => DetailPage(
                      items[index].itemName,
                      items[index].itemDesc, 
                      items[index].itemDate
                    )));
          },
        ));
      },
      itemCount: items.length,
      padding: EdgeInsets.all(8.0),
    );
  }
}
