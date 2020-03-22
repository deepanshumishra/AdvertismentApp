import 'package:flutter/material.dart';
class Wallet extends StatelessWidget {
  final String title;
Wallet(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),

      ),
      body: new Center(
        child: new Text("Wallet information of users will be here",
        ),
      ),
    );
  }

}