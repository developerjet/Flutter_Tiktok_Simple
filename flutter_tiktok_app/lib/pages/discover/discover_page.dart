import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/pages/discover/search_page.dart';
import 'package:flutter_tiktok_app/pages/discover/views/disCover_item_cell.dart';
import 'package:flutter_tiktok_app/pages/discover/views/header_card_view.dart';
import 'package:flutter_tiktok_app/pages/discover/model/discover_model.dart';
import 'package:flutter_tiktok_app/pages/discover/views/tags_flow_view.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';
import 'package:flutter_tiktok_app/widgets/nav_search_bar.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final List<String> banners = [
    'https://img1.baidu.com/it/u=633513051,1533199904&fm=253&fmt=auto&app=120&f=JPEG?w=1280&h=800',
    'https://up.enterdesk.com/edpic_source/1c/7d/58/1c7d58be48b8ec316a043c21ea0bb381.jpg',
    'https://up.enterdesk.com/edpic_source/ca/10/da/ca10da2f11f30c2030ec7bac08c20dcd.jpg',
    'https://img1.baidu.com/it/u=713462249,2476894417&fm=253&fmt=auto&app=138&f=JPEG?w=751&h=500',
    'https://lmg.jj20.com/up/allimg/311/042311060942/110423060942-3-1200.jpg',
  ];

  final List<TagsFlowModel> tagItems = [
    TagsFlowModel(text: "All", color: themeColor),
    TagsFlowModel(text: "Challenge", color: yellow),
    TagsFlowModel(text: "Challenge", color: blue),
    TagsFlowModel(text: "Dancing", color: purple),
  ];

  final List<DisCoverListData> dataList = [
    DisCoverListData(title: "Hot", icon: 'assets/images/list_hot.png', item: [
      DisCoverItemListModel(
          image: 'assets/images/hot_image1.png', playCount: "420.8k"),
      DisCoverItemListModel(
          image: 'assets/images/hot_image2.png', playCount: "362.8k"),
      DisCoverItemListModel(
          image: 'assets/images/hot_image3.png', playCount: "178.8k"),
    ]),
    DisCoverListData(
        title: "Featured",
        icon: 'assets/images/list_featured.png',
        item: [
          DisCoverItemListModel(
              image: 'assets/images/featured_image1.png', playCount: "420.8k"),
          DisCoverItemListModel(
              image: 'assets/images/featured_image2.png', playCount: "52.8k"),
          DisCoverItemListModel(
              image: 'assets/images/featured_image3.png', playCount: "78.8k"),
        ])
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: appBgColor1,
        body: Column(
          children: [
            CustomSearchBar(onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            }),
            SizedBox(height: 8.0),
            Container(
                child: Column(
              children: [
                HeaderCard(images: banners),
                SizedBox(height: 5.0),
                TagsFlowView(items: tagItems),
                SizedBox(height: 5.0),
              ],
            )),
            SizedBox(height: 0.1),
            Expanded(
                child: ListView.builder(
              itemCount: dataList.length, //总共的分组
              itemBuilder: (context, groupIndex) {
                return Column(
                  children: [
                    Container(
                        height: 40,
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                  width: screenWidth * 0.93,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10.0),
                                      Text(
                                        dataList[groupIndex].title,
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            color: white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 5.0),
                                      Image.asset(dataList[groupIndex].icon),
                                    ],
                                  )),
                              Container(
                                  child: Image.asset(
                                'assets/images/round_right_arrow.png',
                                width: 24,
                                height: 24,
                              ))
                            ],
                          ),
                        )),
                    GridView.builder(
                      shrinkWrap: true, // 使得 GridView 自适应内容的高度
                      physics: NeverScrollableScrollPhysics(), // 防止 GridView 滚动
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 1.0,
                        mainAxisSpacing: 1.0,
                      ),
                      itemCount: dataList[groupIndex].item.length, // 对应分组里的数据
                      itemBuilder: (context, index) {
                        return DisCoverItemCell(
                            model: dataList[groupIndex].item[index]);
                      },
                    )
                  ],
                );
              },
            ))
          ],
        ));
  }
}
