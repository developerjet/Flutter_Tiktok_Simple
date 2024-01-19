import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/widgets/sheet_comment_cell.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class HomeCommentSheet extends StatelessWidget {
  const HomeCommentSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  width: screenWidth * 0.85,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "4231 Comments",
                        style: TextStyle(color: white, fontSize: 17),
                      )),
                ),
                Expanded(
                    child: IconButton(
                  padding: EdgeInsets.symmetric(vertical: -8.0),
                  icon: Image.asset('assets/images/page_close.png',
                      width: 30, height: 30),
                  onPressed: () {
                    Navigator.of(context).pop(); // 关闭底部表单
                  },
                ))
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
            height: 100,
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
                        SizedBox(width: 15.0),
                        Text(
                          "Add Comment...",
                          style: TextStyle(
                              color: gray.withAlpha(60), fontSize: 15),
                        ),
                        Align(
                          widthFactor: 6.85,
                          alignment: Alignment.centerRight,
                          child: Image.asset('assets/images/comment_up.png',
                              width: 36, height: 36),
                        ),
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
