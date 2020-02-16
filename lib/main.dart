import 'package:flutter/material.dart';
import 'package:todo_app/add.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App")
      ),
      body: _generateListView(),
            floatingActionButton: FloatingActionButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (builder) => AddPage()));
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.red,
            ),
            
          );
        }
      
        _generateListView() {
          return ListView.builder(itemBuilder: (BuildContext contex, int index){
            return Card(
              child: ListTile(
                title: Text("Hello World"),
                trailing: Icon(Icons.arrow_forward_ios),
              )
            ); 
          },
          itemCount: 3,
          padding: EdgeInsets.all(8.0),
          );
        }
}