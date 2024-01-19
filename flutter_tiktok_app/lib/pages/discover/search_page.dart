import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _focusNode = FocusNode();
  final _editingController = TextEditingController();

  final List<String> searchHistory = [
    'Flutter',
    'Dart',
    'Mobile Development',
    'Widgets',
    'Staggered Grid',
    'Custom Search',
    "Candy Challenge",
    "Halloween",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBgColor1,
        appBar: AppBar(
          backgroundColor: appBgColor1,
          leading: IconButton(
            icon: Image.asset('assets/images/white_back.png'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            children: [
              Expanded(
                child: Container(
                  height: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: appBgColor2),
                  child: Row(
                    children: [
                      SizedBox(width: 8.0),
                      Image.asset('assets/images/search_white.png'),
                      SizedBox(width: 6.0),
                      Expanded(
                          child: Container(
                              child: TextField(
                        focusNode: _focusNode,
                        controller: _editingController,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          labelStyle: TextStyle(color: white),
                          hintStyle: TextStyle(
                              color: gray.withAlpha(60), fontSize: 17),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 2.0), // 设置垂直内边距
                        ),
                        onChanged: (value) {
                          // 处理搜索框文本变化事件
                        },
                      )))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(children: [
          Container(
            height: 60,
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Top Search",
                    style: TextStyle(
                        color: white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500))
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: List.generate(searchHistory.length, (index) {
                return GestureDetector(
                    child: Container(
                      height: 30,
                      padding: EdgeInsets.fromLTRB(18.0, 5.0, 18.0, 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: appBgColor2),
                      child: Text(searchHistory[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: gray.withAlpha(60),
                              fontSize: 17,
                              height: 1.0)),
                    ),
                    onTap: () {
                      setState(() {
                        _editingController.text = searchHistory[index];
                      });
                    });
              }),
            ),
          ))
        ]));
  }
}
