import 'package:flutter/material.dart';
import 'package:wan_flutter/util/screen_util.dart';

/**
    author: Lee
    date:   2022/5/31
 */
class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _nameController =
  TextEditingController(text: 'canhuah');
  final TextEditingController _passwordController = TextEditingController(text: '111111');

  var avatar = const Icon(Icons.account_circle, size: 80);

  Widget userInputView(bool autoFocus, String label, TextEditingController controller){
    return SizedBox(
      width: ScreenCommonUtil.setRealWidth(500),
      child: TextField(
        autofocus: autoFocus,
        decoration: InputDecoration(
          labelText: label,
        ),
        controller: controller,
      ),
    );
  }

  Widget userLoginBtn(){
    return SizedBox(
      width: ScreenCommonUtil.setRealWidth(500),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ElevatedButton(
              onPressed: (){},
              child: const Text(
                  "登录"
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: (){},
              child: const Text(
                  "注册"
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("登录"),
      ),
      body: Center(
        
        child: Column(
          children: [
            SizedBox(height: ScreenCommonUtil.setRealHeight(80)),
            avatar,
            userInputView(true, "用户名", _nameController),
            userInputView(false, "密码", _passwordController),
            SizedBox(height: ScreenCommonUtil.setRealHeight(40)),
            userLoginBtn()
          ],
        ),
      )
    );
  }
}
