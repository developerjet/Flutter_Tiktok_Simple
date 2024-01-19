import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tiktok_app/pages/login/login_page.dart';
import 'package:flutter_tiktok_app/widgets/comment_bottom_sheet.dart';
import 'package:flutter_tiktok_app/pages/home/views/home_right_item.dart';
import 'package:flutter_tiktok_app/pages/home/views/home_user_follow.dart';
import 'package:flutter_tiktok_app/pages/home/views/homt_title_tab.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: appBgColor1,
        body: Container(
          child: Stack(children: [
            // 背景图
            Image.network(
              'https://hbimg.b0.upaiyun.com/d2d530ae853f0bc0cae8e24b1ce4bb26ee64477c1247ef-VG31Z7_fw658',
              width: screenWidth,
              height: screenHeight,
              fit: BoxFit.fill,
            ),
            // 顶部选项
            Column(children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: HomtTitleTab(
                    defaultIndex: 0,
                    onPressed: (index) {
                      print("Selected index ${index}");
                    },
                  )),
              // 顶部内容
              Row(
                children: [
                  // 左侧音乐
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          width: screenWidth * 0.8,
                          margin: EdgeInsets.only(top: screenHeight * 0.55),
                          alignment: Alignment.bottomLeft,
                          child: HomeUserFollow(onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          }))),
                  // 右侧菜单
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          width: screenWidth * 0.2,
                          margin: EdgeInsets.only(top: screenHeight * 0.32),
                          alignment: Alignment.bottomRight,
                          child: HomeRightItem(onPressed: () {
                            _showCustomBottomSheet(context);
                          })))
                ],
              )
            ])
          ]),
        ));
  }

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return HomeCommentSheet();
      },
    );
  }
}
