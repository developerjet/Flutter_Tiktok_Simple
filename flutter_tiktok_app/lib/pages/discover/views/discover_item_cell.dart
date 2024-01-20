import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/pages/discover/model/discover_model.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class DisCoverItemCell extends StatelessWidget {
  final DisCoverItemListModel model;
  const DisCoverItemCell({super.key, required this.model});

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Stack(children: [
        Container(
          height: 170,
          width: 130,
          child: Image.asset(
            model.image,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Row(
            children: [
              SizedBox(width: 2.0),
              Image.asset('assets/images/video_play_fill.png'),
              SizedBox(width: 2.0),
              Text(model.playCount,
                  style: TextStyle(
                      color: white, fontSize: 12, fontWeight: FontWeight.w400))
            ],
          ),
        )
      ]),
    );
  }
}
