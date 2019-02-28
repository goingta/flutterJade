import 'package:flutter/material.dart';

import '../pages/testpage/testpage.dart';

class TabPageWithTabController extends StatefulWidget {
  @override
  _TabPageWithTabControllerState createState() =>
      _TabPageWithTabControllerState();
}

class _TabPageWithTabControllerState extends State<TabPageWithTabController>
    with SingleTickerProviderStateMixin {
  List<Widget> _tabPages = [new TestPage("page1"), new TestPage("page2")];

  //TabController方式
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabPages.length);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        children: _tabPages,
        controller: _tabController,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        onTap: tabTap,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: new Text("首页"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: new Text("我的"), icon: Icon(Icons.portrait))
        ],
      ),
    );
  }

  void tabTap(int index) {
    _tabController.index = index;
  }
}
