import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tiktok_app/pages/home/views/home_item_button.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class HomeRightItem extends StatefulWidget {
  final VoidCallback onPressed;
  const HomeRightItem({super.key, required this.onPressed});

  @override
  _HomeRightItemState createState() => _HomeRightItemState();
}

class _HomeRightItemState extends State<HomeRightItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5), // 旋转周期
    )..repeat(); // 重复旋转
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Column(children: [
          // 点赞
          SizedBox(height: 10),
          HomeItemButton(
              title: "3.2M",
              image: Image.asset('assets/images/home_star_white.png'),
              onPressed: () {}),
          // 评论
          HomeItemButton(
              title: "4321",
              image: Image.asset('assets/images/home_comment.png'),
              onPressed: widget.onPressed),
          // 发送
          HomeItemButton(
              title: "668",
              image: Image.asset('assets/images/home_send.png'),
              onPressed: () {}),
          // 头像
          SizedBox(height: 2),
          ClipRRect(
              borderRadius: BorderRadius.circular(28.0),
              child: Container(
                  color: white.withAlpha(20),
                  width: 56,
                  height: 56,
                  child: Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            child: RotationTransition(
                                turns: _controller,
                                child: Image.network(
                                    "https://img2.baidu.com/it/u=3071236289,1596536161&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400")),
                          ))))),
          SizedBox(height: 10),
        ]));
  }
}
