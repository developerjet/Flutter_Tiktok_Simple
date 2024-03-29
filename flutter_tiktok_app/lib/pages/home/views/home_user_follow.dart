import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class HomeUserFollow extends StatefulWidget {
  final VoidCallback onTap;
  const HomeUserFollow({super.key, required this.onTap});

  @override
  _HomeUserFollowState createState() => _HomeUserFollowState();
}

class _HomeUserFollowState extends State<HomeUserFollow> {
  final String musicText =
      'Eyes blue like the atlantic Eyes blue like the atlantic Eyes blue like the atlantic';
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _startScrolling();
  }

  void _startScrolling() {
    Timer.periodic(Duration(milliseconds: 40), (timer) {
      if (_scrollController.hasClients) {
        double scrollOffset = _scrollController.offset + 1;
        if (scrollOffset > _scrollController.position.maxScrollExtent) {
          scrollOffset = _scrollController.position.minScrollExtent;
        }
        _scrollController.jumpTo(scrollOffset);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Wrap(
        children: [
          Column(children: [
            Container(
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Container(
                        width: 32,
                        height: 32,
                        child: Image.network(
                            "https://y.gtimg.cn/music/photo_new/T002R300x300M000002Nt51E0q8Zoo.jpg?max_age=2592000"),
                      )),
                  SizedBox(width: 5),
                  Text("Alan Walker",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  SizedBox(width: 5),
                  Container(
                      width: 67,
                      height: 30,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(white), // 设置背景颜色
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: -5.0), // 设置内边距
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0), // 设置圆角
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
                        onPressed: widget.onTap,
                      ))
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla ac a eu cras. Et augue amet id",
              maxLines: 3,
              style: TextStyle(
                  color: white, fontWeight: FontWeight.normal, fontSize: 15),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                children: [
                  Image.asset('assets/images/home_music_note.png',
                      width: 16, height: 16),
                  SizedBox(width: 5),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          musicText,
                          style: TextStyle(color: white, fontSize: 14.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ])
        ],
      ),
    );
  }
}
