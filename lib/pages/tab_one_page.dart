import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wan_flutter/item/item_article.dart';
import 'package:wan_flutter/model/top_list_model.dart';
import 'package:wan_flutter/net/net.dart';

/**
    author: Lee
    date:   2022/5/23
 */
class TabOnePage extends StatefulWidget {
  const TabOnePage({Key key}) : super(key: key);

  @override
  _TabOnePageState createState() => _TabOnePageState();
}

class _TabOnePageState extends State<TabOnePage> {

  TopListModel topListModel;

  @override
  void initState() {

    Net.instance.getTopList(successCallback: (topListModel){
      setState(() {
        this.topListModel = topListModel;
      });
    });
  }

  Widget loadContent() {
    if (topListModel == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else{
      return Container(
        child: ListView.builder(
            itemCount: topListModel.data.length,
            itemBuilder: (context, index) {
              return ItemArticle(topListModel.data[index]);
            }),
      );
    }

  }

  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(context, designSize: const Size(750, 1334));
    return Container(
      color: Colors.black12,
      child: loadContent()
    );
  }
}
