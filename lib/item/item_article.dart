import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../model/top_list_model.dart';
import '../util/screen_util.dart';

/**
    author: Lee
    date:   2022/5/26
 */
class ItemArticle extends StatefulWidget {

  final Data data;
  const ItemArticle(this.data, {Key key}) : super(key: key);

  @override
  _ItemArticleState createState() => _ItemArticleState();
}

class _ItemArticleState extends State<ItemArticle> {

  @override
  Widget build(BuildContext context) {

    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
               Expanded(
                 child: Text(widget.data.title, softWrap: true, textAlign: TextAlign.left),
               ),
            ],
          ),
          Stack(
            children: [
              Align(
                child: Text("作者：" + widget.data.author.toString()),
                alignment: Alignment.centerLeft,
              ),
              Align(
                child: Text(widget.data.publishTime.toString()),
                alignment: Alignment.centerRight,
              ),

            ],
          ),
          Stack(
            children: [
              Align(
                child: Text(widget.data.chapterName),
                alignment: Alignment.centerLeft,
              ),
              const Align(
                child: Icon(Icons.favorite),
                alignment: Alignment.centerRight,
              ),

            ],
          ),
          Divider(
            height: ScreenCommonUtil.setRealHeight(8),
          )
        ],
      ),
    );
  }
}
