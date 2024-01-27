import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/widgets/sheet_comment_cell.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class CommentBottomSheet extends StatefulWidget {
  const CommentBottomSheet({Key? key}) : super(key: key);

  @override
  _CommentBottomSheetState createState() => _CommentBottomSheetState();
}

class _CommentBottomSheetState extends State<CommentBottomSheet>
    with WidgetsBindingObserver {
  final _focusNode = FocusNode();
  final _editingController = TextEditingController();

  /// 系统键盘高度
  double keyboardHeight = 0.0;

  /// 是否展示键盘
  bool isKeyboardShow = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _focusNode.addListener(() {});
    // 注册WidgetsBindingObserver
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    // 移除WidgetsBindingObserver
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final bottom = MediaQueryData.fromWindow(window).viewInsets.bottom;
    super.didChangeMetrics();

    // 键盘存在中间态，回调是键盘冒出来的高度
    keyboardHeight = max(keyboardHeight, bottom);
    if (bottom == 0) {
      setState(() {
        isKeyboardShow = false;
      });
      // print("==> 键盘关闭");
    } else if (bottom == keyboardHeight || keyboardHeight == 0) {
      setState(() {
        isKeyboardShow = true;
      });
      // print("==> 键盘打开");
    } else {
      setState(() {
        isKeyboardShow = false;
      });
      // print("==> 键盘关闭");
    }

    // print(keyboardHeight);
    Future.delayed(Duration(microseconds: 1000), () => true);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // 获取键盘高度
    keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      width: screenWidth,
      height: screenHeight * 0.93, // 设置底部表单的高度
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0), // 左上角圆角半径为20.0
          topRight: Radius.circular(12.0), // 右上角圆角半径为20.0
        ),
        color: sheetBgColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20,
            child: Center(
                child: Image.asset('assets/images/bottom_sheet_line.png',
                    width: 36, height: 5)),
          ),
          Container(
            height: 50,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "4231 Comments",
                          style: TextStyle(color: white, fontSize: 17),
                        ))),
                Container(
                    width: 50,
                    child: IconButton(
                      icon: Image.asset('assets/images/page_close.png',
                          width: 30, height: 30),
                      onPressed: () {
                        Navigator.of(context).pop(); // 关闭底部表单
                      },
                    )),
                SizedBox(width: 5.0)
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return SheetCommentCell();
            },
          )),
          Container(
            height: isKeyboardShow ? (83 + keyboardHeight) : 83,
            color: appBgColor3,
            child: Column(
              children: [
                SizedBox(height: 10.0),
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  height: 44,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        color: appBgColor2),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextField(
                          focusNode: _focusNode,
                          controller: _editingController,
                          style: TextStyle(color: white, fontSize: 17),
                          decoration: InputDecoration(
                            hintText: 'Add Comment...',
                            labelStyle: TextStyle(color: white),
                            hintStyle: TextStyle(
                                color: gray.withAlpha(60), fontSize: 17),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: -17, horizontal: 15.0), // 设置垂直内边距
                          ),
                          onChanged: (value) {
                            // 处理搜索框文本变化事件
                          },
                        )),
                        Container(
                            child: GestureDetector(
                          child: Image.asset('assets/images/comment_up.png',
                              fit: BoxFit.fill),
                          onTap: () {
                            _editingController.clear();
                          },
                        )),
                        SizedBox(width: 6.0),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
