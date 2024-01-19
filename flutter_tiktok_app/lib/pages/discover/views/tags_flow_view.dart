import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/pages/discover/model/discover_model.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class TagsFlowView extends StatelessWidget {
  final List<TagsFlowModel> items;
  const TagsFlowView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 46,
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // 设置为横向滚动
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  elevation: 5.0,
                  color: Colors.transparent,
                  child: Container(
                    height: 32,
                    width: _handlerTextPainter(items[index].text).width + 25.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: items[index].color),
                    child: Center(
                      child: Text(
                        items[index].text,
                        style: TextStyle(
                            color: white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Divider(
              height: 0.5, // 设置分割线的高度
              color: gray.withAlpha(20)),
        )
      ],
    );
  }

  TextPainter _handlerTextPainter(String text) {
    TextSpan textSpan = TextSpan(
      text: text,
      style: TextStyle(fontSize: 16.0),
    );

    TextPainter textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();

    return textPainter;
  }
}
