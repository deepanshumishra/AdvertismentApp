import 'package:flutter/material.dart';
class Help extends StatelessWidget {
  final String title2;
  Help(this.title2);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Help"),

      ),
      body: new Center(
        child: new Text("We are always here to help you\n"
            "feel free to contact us",
        ),
      ),
    );
  }

}