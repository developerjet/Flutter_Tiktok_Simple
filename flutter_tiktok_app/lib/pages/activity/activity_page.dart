import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({ Key? key }) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Activity"),),
    );
  }
}