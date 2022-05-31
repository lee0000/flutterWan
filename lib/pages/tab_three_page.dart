import 'package:flutter/material.dart';
import 'package:wan_flutter/pages/about_page.dart';

/**
    author: Lee
    date:   2022/5/23
 */
class TabThreePage extends StatefulWidget {
  const TabThreePage({Key key}) : super(key: key);

  @override
  _TabThreePageState createState() => _TabThreePageState();
}

class _TabThreePageState extends State<TabThreePage> {

  bool isNeedLogin = true;

  @override
  Widget build(BuildContext context) {

    // 登录控件
    Widget loginWidget() {
      if (isNeedLogin) {
          return ListTile(
            leading: const Icon(Icons.login),
            title: const Text("登录"),
            trailing: const Icon(Icons.chevron_right),
            onTap: (){
              print("登录");
              // setState(() {
              //   isNeedLogin = !isNeedLogin;
              // });
              Navigator.pushNamed(context, "/login");
            },
          );
      }  else{
        return ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text("退出登录"),
          trailing: const Icon(Icons.chevron_right),
          onTap: (){
            print("退出登录");
            setState(() {
              isNeedLogin = !isNeedLogin;
            });
          },
        );
      }
    }

    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text("喜欢的文章"),
            trailing: const Icon(Icons.chevron_right),
            onTap: (){
              print("喜欢的文章");
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("关于我们"),
            trailing: const Icon(Icons.chevron_right),
            onTap: (){
              print("关于我们new");
              Navigator.of(context).pushNamed("/about");
            }),
          loginWidget()
        ],
      ),
    );
  }
}
