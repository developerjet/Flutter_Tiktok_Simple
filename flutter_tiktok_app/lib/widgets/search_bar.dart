import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: black,
        height: 120,
        child: Column(
          children: [
            SizedBox(height: 50.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: appBgColor2,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10.0),
                          Image.asset('assets/images/search_white.png',
                              width: 24, height: 24),
                          SizedBox(width: 10.0),
                          Text(
                            "Search",
                            style: TextStyle(
                                color: gray.withAlpha(60), fontSize: 17),
                          )
                        ],
                      ))),
            )
          ],
        ));
  }
}