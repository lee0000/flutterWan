import 'package:dio/dio.dart';
import 'package:event_bus/event_bus.dart';
import 'package:wan_flutter/model/top_list_model.dart';

class Net{

  final String baseUrl = "https://www.wanandroid.com/";

  Dio _dio;

  // 工厂方法构造函数
  factory Net() => _getInstance();

  // instance的getter方法，singletonManager.instance获取对象
  static Net get instance => _getInstance();

  // 静态变量_instance，存储唯一对象
  static Net _instance;

  // 获取对象
  static Net _getInstance() {
    if (_instance == null) {
      // 使用私有的构造方法来创建对象
      _instance = Net._internal();
    }
    return _instance;
  }

  Net._internal() {
    _dio = Dio();
  }


  // 登录
  void loginIn(String userName, String password) async{

    var response = await _dio.post(baseUrl + "user/login", data: {'username': userName, 'password': password});
    print(response.toString());
  }

  // 注册
  void register(String userName, String password, String repassword) async {
    var response = await _dio.post(baseUrl + "user/register", data: {'username': userName,
      'password': password, 'repassword': repassword});
    print(response.toString());
  }

  // 退出
  void loginOut() async {
    var response = await _dio.get(baseUrl + "user/logout/json");
    print(response.toString());
  }

  // 置顶文章列表
  void getTopList({Function(TopListModel) successCallback}) async {

    var response = await _dio?.get(baseUrl + "article/top/json");

    TopListModel topListModel = TopListModel.fromJson(response.data);
    successCallback.call(topListModel);
  }

}