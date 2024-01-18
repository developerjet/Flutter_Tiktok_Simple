import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/pages/activity/activity_page.dart';
import 'package:flutter_tiktok_app/pages/discover/discover_page.dart';
import 'package:flutter_tiktok_app/pages/home/home_page.dart';
import 'package:flutter_tiktok_app/pages/profile/profile_page.dart';
import 'package:flutter_tiktok_app/pages/upload_page.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class Tabs extends StatefulWidget {
  final int index;
  const Tabs({super.key, this.index = 0});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  late int _currentIndex;

  // 实例化控制器
  final List<Widget> _pages = [
    HomePage(),
    DiscoverPage(),
    UploadPage(),
    ActivityPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 背景颜色
      backgroundColor: appBgColor1,
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: black,
          unselectedItemColor: gray,
          fixedColor: themeColor, //选中的颜色
          unselectedFontSize: 10,
          selectedFontSize: 10,
          currentIndex: _currentIndex, //第几个菜单选中
          type: BottomNavigationBarType.fixed, //如果底部有4个或者4个以上的菜单的时候就需要配置这个参数
          onTap: (index) {
            //点击菜单触发的方法
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            //首页
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/tab_home_none.png',
                    width: 24, height: 24),
                activeIcon: Image.asset('assets/images/tab_home_selected.png',
                    width: 24, height: 24),
                label: "Home"),
            // 发现
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/tab_discover_none.png',
                    width: 24, height: 24),
                activeIcon: Image.asset(
                    'assets/images/tab_discover_selected.png',
                    width: 24,
                    height: 24),
                label: "Discover"),
            // 上传
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/tab_item_upload.png',
                    width: 47, height: 36), label: ""),
            // 活动
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/tab_activity_none.png',
                    width: 24, height: 24),
                activeIcon: Image.asset(
                    'assets/images/tab_activity_selected.png',
                    width: 24,
                    height: 24),
                label: "Activity"),
            // 个人信息
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/tab_profile_none.png',
                    width: 24, height: 24),
                activeIcon: Image.asset(
                    'assets/images/tab_profile_selected.png',
                    width: 24,
                    height: 24),
                label: "Profile"),
          ]),
      //使用IndexedStack作为body
      body: IndexedStack(
        index: _currentIndex, //当前显示的子组件索引
        children: _pages, //子组件列表
      ),
    );
  }
}
