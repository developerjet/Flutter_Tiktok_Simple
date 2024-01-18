import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class HomeItemButton extends StatelessWidget {
  final String title;
  final Image image;

  final VoidCallback onPressed;

  HomeItemButton({required this.title, required this.image, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: white,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.all(16.0), // 调整按钮内边距
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          image,
          SizedBox(height: 2), // 添加一些垂直间距
          Text(
            title,
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    ));
  }
}
