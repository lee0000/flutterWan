import 'package:flutter/material.dart';
import 'package:wan_flutter/util/relative_date.dart';
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

    return Padding(

      padding: const EdgeInsets.fromLTRB( 6.0, 6.0, 6.0, 0),
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
          const SizedBox(height: 6),
          Stack(
            children: [
              Align(
                child: Text("作者：" + widget.data.author.toString()),
                alignment: Alignment.centerLeft,
              ),
              Align(
                child: Text(RelativeDateFormat.format(widget.data.publishTime)),
                alignment: Alignment.centerRight,
              ),

            ],
          ),
          const SizedBox(height: 2),
          Stack(
            children: [
              Align(
                child: Text(" " + widget.data.chapterName + " ", style: const TextStyle(
                  backgroundColor: Colors.white38,
                )),
                alignment: Alignment.centerLeft,
              ),
              const Align(
                child: Icon(Icons.favorite_border),
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
