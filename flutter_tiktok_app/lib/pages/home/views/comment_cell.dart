import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class CommentCell extends StatelessWidget {
  const CommentCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          //头像
          Container(
            width: 36,
            height: 110,
            child: Container(
              width: 36,
              height: 36,
              alignment: Alignment.topCenter,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(18.0),
                  child: Image.network(
                    "https://img2.baidu.com/it/u=1320447720,1446824595&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(width: 15.0),
          // 评论
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Babayaga",
                style: TextStyle(color: gray.withAlpha(60), fontSize: 15),
              ),
              SizedBox(height: 5.0),
              Text(
                "Lorem ipsum dolor sit amet, elit poo consectetur adipiscing elit. Aenean sit.",
                style: TextStyle(color: white, fontSize: 16),
              ),
              SizedBox(height: 5.0),
              InkWell(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("View replies (12)",
                      style:
                          TextStyle(color: gray.withAlpha(60), fontSize: 15)),
                  SizedBox(width: 2), // 间距
                  Image.asset('assets/images/round_down_arrow.png',
                      width: 24, height: 24), // 图标
                ],
              ))
            ],
          )),
          //点赞
          SizedBox(width: 10.0),
          Container(
            width: 30,
            height: 110,
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Image.asset('assets/images/comment_like_red.png'),
                Text("1.8k",
                    style: TextStyle(color: gray.withAlpha(60), fontSize: 13)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
