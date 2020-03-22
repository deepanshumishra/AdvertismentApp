import 'package:flutter/material.dart';
class About extends StatelessWidget {
  final String title1;
  About(this.title1);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About"),

      ),
      body: new Center(
        child: new Text("WELCOME!\n"
            "how you guys are doing"
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nDeveloper's Name:Deepanshu Mishra",
        ),
      ),
    );
  }

}