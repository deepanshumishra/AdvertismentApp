import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:makemoney/app_screen/24*7.dart';
import 'package:makemoney/app_screen/About.dart';
import 'package:makemoney/app_screen/Wallet.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(primarySwatch: Colors.deepPurple),
        home: new HomePage(),
        routes: <String, WidgetBuilder>{
          "/a": (BuildContext context) => new Wallet("Wallet"),
          "/b": (BuildContext context) => new About("Wallet"),
          "/c": (BuildContext context) => new Help("Help"),
          "/a": (BuildContext context) => new Wallet("Wallet"),
          "/a": (BuildContext context) => new Wallet("Wallet"),
        });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Make money"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Deepanshu Mishra"),
              accountEmail: new Text("superman1010@gmail.com"),
              onDetailsPressed: () {},
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: new Text("D"),
                foregroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: new Text("A"),
                )
              ],
            ),
            new ListTile(
              title: new Text("Wallet"),
              trailing: new Icon(Icons.account_balance_wallet),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/a");
              },
            ),
            new ListTile(
              title: new Text("24*7 Help"),
              trailing: new Icon(Icons.live_help),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/c");
              },
            ),
            new ListTile(
                title: new Text("Settings"),
                trailing: new Icon(Icons.settings),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/a");
                }),
            new ListTile(
              title: new Text("About"),
              trailing: new Icon(Icons.accessibility),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/b");
              },
            ),
            new ListTile(
              title: new Text("FeedBack"),
              trailing: new Icon(Icons.feedback),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/a");
              },
            ),
            new ListTile(
              title: new Text("Quit"),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
                exit(0);
              },
            )
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
