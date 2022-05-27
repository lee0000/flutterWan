import 'package:flutter_screenutil/flutter_screenutil.dart';
class ScreenCommonUtil{

  static getScreenWidth(){
    return ScreenUtil().screenWidth;
  }

  static getScreenHeight(){
    return ScreenUtil().screenHeight;
  }

  static setRealWidth(double rawWidth){
    return ScreenUtil().setWidth(rawWidth);
  }

  static setRealHeight(double rawHeight){
    return ScreenUtil().setHeight(rawHeight);
  }

}