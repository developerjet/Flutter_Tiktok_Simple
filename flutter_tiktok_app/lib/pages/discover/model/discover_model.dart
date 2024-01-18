import 'package:flutter/material.dart';

class TagsFlowModel {
  final String text;
  final Color color;

  TagsFlowModel({
    required this.text,
    required this.color,
  });
}

class DisCoverListData {
  final String title;
  final String icon;
  final List<DisCoverItemListModel> item;

  DisCoverListData({required this.title, required this.icon, required this.item});
}

class DisCoverItemListModel {
  final String playCount;
  final String image;

  DisCoverItemListModel({required this.playCount, required this.image});
}
