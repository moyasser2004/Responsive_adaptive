import 'package:flutter/material.dart';

import '../core/class/app_images.dart';
import '../core/model/drawer_dash_model.dart';
import 'drawer_dash_board_item.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  static List<DrawerDashModel> list = [
    DrawerDashModel(
        title: 'Dashboard', image: AppImages.imagesCategory2),
    DrawerDashModel(
        title: 'My Transaction', image: AppImages.imagesConvertCard),
    DrawerDashModel(
        title: 'Wallet Account', image: AppImages.imagesWallet2),
    DrawerDashModel(
        title: 'My Investments', image: AppImages.imagesChart2),
  ];

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: DrawerList.list.length,
        itemBuilder: (BuildContext context, int index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: DrawerDashBoardItem(
                model: DrawerList.list[index],
                isSelected: index == currentIndex,
              ),
            )));
  }
}
