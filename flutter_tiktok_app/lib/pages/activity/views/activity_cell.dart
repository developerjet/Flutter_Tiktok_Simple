import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class ActivityCell extends StatelessWidget {
  const ActivityCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: appBgColor1,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  //头像
                  Container(
                    width: 36,
                    child: Container(
                      height: 36,
                      alignment: Alignment.topCenter,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.network(
                            "https://img1.baidu.com/it/u=2065064860,2968666003&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400",
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
                      RichText(
                        text: TextSpan(
                          text: 'Maddison Sargent',
                          style: TextStyle(color: white, fontSize: 17),
                          children: <TextSpan>[
                            TextSpan(text: ' '),
                            TextSpan(
                              text: 'posted a video. 2m ago',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: gray.withAlpha(60)),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
                  //点赞
                  SizedBox(width: 10.0),
                  Container(
                      width: 67,
                      height: 30,
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                white), // 设置背景颜色
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.symmetric(vertical: -5.0), // 设置内边距
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(15.0), // 设置圆角
                              ),
                            ),
                          ),
                          child: Text(
                            "Fllow",
                            style: TextStyle(
                                color: themeColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          onPressed: () {}))
                ],
              ),
              SizedBox(height: 15.0)
            ],
          ),
        ));
  }
}
