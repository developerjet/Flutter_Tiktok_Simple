import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class HomeUserFollow extends StatefulWidget {
  const HomeUserFollow({Key? key}) : super(key: key);

  @override
  _HomeUserFollowState createState() => _HomeUserFollowState();
}

class _HomeUserFollowState extends State<HomeUserFollow> {
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
                  Text("eyes blue like the atlantic",
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.normal,
                          fontSize: 15))
                ],
              ),
            )
          ])
        ],
      ),
    );
  }
}
