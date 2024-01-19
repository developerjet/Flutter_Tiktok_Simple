import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class HomtTitleTab extends StatefulWidget {
  final int defaultIndex;
  final Function(int?) onPressed;
  const HomtTitleTab({super.key, required this.defaultIndex, required this.onPressed});

  @override
  _HomtTitleTabState createState() => _HomtTitleTabState();
}

class _HomtTitleTabState extends State<HomtTitleTab> {
  late int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();

      _selectedIndex = widget.defaultIndex;
    }

    return Container(
      height: 120,
      padding: EdgeInsets.only(top: 30),
      child: Center(
          child: Container(
              height: 50,
              child: Row(
                children: [
                  SizedBox(width: 8.0),
                  TextButton(
                    child: Text("For you",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: _selectedIndex == 0
                                ? white
                                : white.withAlpha(80))),
                    onPressed: () {
                      widget.onPressed(0);
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                  ),
                  SizedBox(width: 2.0),
                  TextButton(
                    child: Text("Following",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: _selectedIndex == 1
                                ? white
                                : white.withAlpha(80))),
                    onPressed: () {
                      widget.onPressed(1);
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                  ),
                  SizedBox(width: 2.0),
                  TextButton(
                    child: Text("Live",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: _selectedIndex == 2
                                ? white
                                : white.withAlpha(80))),
                    onPressed: () {
                      widget.onPressed(2);
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                  )
                ],
              ))),
    );
  }
}
