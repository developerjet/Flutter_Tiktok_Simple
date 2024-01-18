import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';
import 'package:flutter_tiktok_app/widgets/search_bar.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomSearchBar(),
      Expanded(child: SingleChildScrollView())
    ]);
  }
}
