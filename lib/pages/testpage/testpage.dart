import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  final String text;

  TestPage(this.text);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: new Center(child: new Text(this.text)));
  }
}
