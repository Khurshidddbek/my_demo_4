import 'package:flutter/material.dart';
import 'package:mydemo4/pages/home_page.dart';

class DetailPage extends StatefulWidget {
  static final id = 'detail_page';

  String name;
  int age;
  DetailPage({this.name, this.age});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

Future _openHome() async {
  Navigator.of(context).push(new MaterialPageRoute(
      builder: (BuildContext context) {
        return new HomePage(name: 'Dart', age: 33,);
      }
  ));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Detail Page"),
      ),
      body: Center(
        child: Column(
          children: [
            FlatButton(
              onPressed: () {
                _openHome();
                //Navigator.pushReplacementNamed(context, HomePage.id);
              },
              child: Text('ButtonBack'),
              color: Colors.blueAccent,
            ),

            Text('Name: ${widget.name}'),

            Text('Age: ${widget.age}'),
          ],
        )
      ),
    );
  }
}