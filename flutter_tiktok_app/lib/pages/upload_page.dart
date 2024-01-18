import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({ Key? key }) : super(key: key);

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Upload"),),
    );
  }
}