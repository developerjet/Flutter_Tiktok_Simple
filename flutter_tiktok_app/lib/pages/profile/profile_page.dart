import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/pages/profile/views/profile_header.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(color: white, fontSize: 17),
          ),
          backgroundColor: appBgColor1,
        ),
        backgroundColor: appBgColor1,
        body: Column(children: [
          ProfileHeader(),
          Container(
              height: 50,
              child: TabBar(
                labelColor: white,
                indicatorColor: white,
                unselectedLabelColor: gray.withAlpha(60),
                controller: _tabController,
                dividerColor: gray.withAlpha(10),
                tabs: [
                  Tab(text: 'Work'),
                  Tab(text: 'Private'),
                  Tab(text: 'Favorites'),
                ],
              )),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              Center(
                  child: Text(
                'Tab 1 Content',
                style: TextStyle(color: white),
              )),
              Center(
                  child: Text(
                'Tab 2 Content',
                style: TextStyle(color: white),
              )),
              Center(
                  child: Text(
                'Tab 3 Content',
                style: TextStyle(color: white),
              )),
            ],
          ))
        ]));
  }
}
