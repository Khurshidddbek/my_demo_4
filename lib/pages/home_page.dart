import 'package:flutter/material.dart';
import 'package:mydemo4/pages/detail_page.dart';

class HomePage extends StatefulWidget {
  static final id = 'home_page';

  String name;
  int age;
  HomePage({this.name, this.age});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future _openDetails() async {
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context) {
          return new DetailPage(name: 'Flutter', age: 22,);
        },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HomeWork: mydemo4"),
        ),
      body: Center(
        child: Column(
          children: [
            FlatButton(
                color: Colors.blueAccent,
                onPressed: () {
                  _openDetails();
                  //Navigator.pushNamed(context, DetailPage.id);
                },
                child: Text('ButtonOne')),

            FlatButton(
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, DetailPage.id);
                },
                child: Text('ButtonTwo'),
            ),

            Text('Name: ${widget.name}'),

            Text('Age: ${widget.age}'),
          ],
        ),
        ),
    );
  }
}