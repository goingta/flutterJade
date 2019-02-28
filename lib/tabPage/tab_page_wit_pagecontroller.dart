import 'package:flutter/material.dart';

import '../pages/testpage/testpage.dart';

class TabPageWithPageController extends StatefulWidget {
  @override
  _TabPageWithPageControllerState createState() =>
      _TabPageWithPageControllerState();
}

class _TabPageWithPageControllerState extends State<TabPageWithPageController>
    with SingleTickerProviderStateMixin {
  List<Widget> _tabPages = [new TestPage("page1"), new TestPage("page2")];

  //PageController方式
  PageController _pageController;
  int _tabIndex;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
    _tabIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
          children: _tabPages,
          controller: _pageController,
          onPageChanged: pageChanged),
      bottomNavigationBar: new BottomNavigationBar(
        onTap: tabTap,
        currentIndex: _tabIndex,
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
    _pageController.jumpToPage(index);
  }

  void pageChanged(int page) {
    setState(() {
      this._tabIndex = page;
    });
  }
}
