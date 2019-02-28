import 'package:flutter/material.dart';

import 'tabPage/tab_page_with_tabcontroller.dart';
import 'tabPage/tab_page_wit_pagecontroller.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Jade',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: TabPageWithTabController(),
        home: TabPageWithPageController());
  }
}
