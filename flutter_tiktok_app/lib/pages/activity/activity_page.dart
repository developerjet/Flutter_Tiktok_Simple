import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/pages/activity/views/activity_cell.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  final int _rowLength = 7;
  final List<String> _groupItems = ["Today", "Yesterday"];
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBgColor1,
        appBar: AppBar(
          title: Text(
            "Activity",
            style: TextStyle(color: white, fontSize: 17),
          ),
          backgroundColor: appBgColor1,
        ),
        body: SafeArea(
            child: ListView.builder(
          controller: _scrollController,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return _contactBody(context, index);
          },
          itemCount: _groupItems.length,
        )));
  }

  _contactHeader(BuildContextcontext, String title) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Text(
        title,
        style:
            TextStyle(color: white, fontSize: 17, fontWeight: FontWeight.w500),
      ),
    );
  }

  _contactBody(BuildContext context, int groupIndex) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return _contactHeader(context, _groupItems[groupIndex]);
        } else {
          return ActivityCell();
        }
      },
      itemCount: _rowLength,
    );
  }
}
