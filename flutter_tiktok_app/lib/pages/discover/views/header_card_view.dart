import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class HeaderCard extends StatelessWidget {
  final List<String> images;
  HeaderCard({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 150, // 设置卡片的高度
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // 设置为横向滚动
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              color: appBgColor1,
              child: Container(
                width: screenWidth - 40.0, // 设置卡片的宽度
                child: Image.network(images[index], fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}
