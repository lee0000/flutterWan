import 'package:flutter/material.dart';
import 'package:wan_flutter/pages/tab_one_page.dart';
import 'package:wan_flutter/pages/tab_three_page.dart';
import 'package:wan_flutter/pages/tab_two_page.dart';

/**
    author: Lee
    date:   2022/5/23
 */
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _tabIndex = 0;
  List<BottomNavigationBarItem> _bottomNavViews;
  List<String> appBarTitles = ["首页", "发现", "我的"];

  @override
  void initState() {

    _bottomNavViews = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        label: appBarTitles[0],
        backgroundColor: Colors.white38,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.widgets),
        label: appBarTitles[1],
        backgroundColor: Colors.white38,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.person),
        label: appBarTitles[2],
        backgroundColor: Colors.white38,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {

    Widget _body = IndexedStack(
      children: const [TabOnePage(), TabTwoPage(), TabThreePage()],
      index: _tabIndex,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitles[_tabIndex]),
      ),
      body: _body,
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavViews.map((e) => e).toList(),
        currentIndex: _tabIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}
