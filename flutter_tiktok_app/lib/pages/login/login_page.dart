import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight,
          child: Image.asset('assets/images/login_bg.png', fit: BoxFit.fill),
        ),
        Container(
            height: 120,
            padding: EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                SizedBox(width: 15.0),
                IconButton(
                  icon: Image.asset('assets/images/white_back.png'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )),
        Container(
          padding: EdgeInsets.fromLTRB(30, 96, 30, 0),
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/app_logo.png'),
              SizedBox(height: 96),
              Text(
                "Welcome!",
                style: TextStyle(
                    color: white, fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              Text(
                "Discover interesting short videos. Share your moments with the CutG community",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: white, fontSize: 20, fontWeight: FontWeight.w400),
              )
            ],
          )),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 200,
              width: screenWidth,
              child: Column(
                children: [
                  SizedBox(height: 15.0),
                  Container(
                      height: 44.0,
                      width: screenWidth,
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(blue), // 设置背景颜色
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: -5.0), // 设置内边距
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0), // 设置圆角
                            ),
                          ),
                        ),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                  SizedBox(height: 15.0),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset('assets/images/login_apple.png'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        IconButton(
                          icon: Image.asset('assets/images/login_facebook.png'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        IconButton(
                          icon: Image.asset('assets/images/login_google.png'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    ));
  }
}
