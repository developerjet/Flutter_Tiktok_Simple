import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  _ProfileHeaderState createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  final String bgUrl =
      "https://lmg.jj20.com/up/allimg/1113/042220121425/200422121425-3-1200.jpg";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double viewWidth = MediaQuery.of(context).size.height;
    double viewHeight = MediaQuery.of(context).size.height;

    return Container(
        height: 240,
        child: Stack(
          children: [
            Image.network(bgUrl, width: viewWidth, height: viewHeight, fit: BoxFit.cover),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 20.0),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://img2.baidu.com/it/u=3071236289,1596536161&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(40.0),
                        color: white.withAlpha(20)),
                  ),
                  SizedBox(height: 6.0),
                  Text("@Jett_666",
                      style: TextStyle(color: white, fontSize: 15.0)),
                  SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildTitleColumn(gray, "Following", white, "30"),
                      _buildTitleColumn(gray, "Fans", white, "19"),
                      _buildTitleColumn(gray, "Star", white, "2"),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  Column _buildTitleColumn(
      Color titleColor, String title, Color valueColor, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: valueColor,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 2),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: titleColor,
            ),
          ),
        )
      ],
    );
  }
}
