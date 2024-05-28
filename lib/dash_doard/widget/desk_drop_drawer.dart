import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/core/class/app_images.dart';
import 'package:responsiveadaptive/dash_doard/widget/top_drawer.dart';

import '../core/model/drawer_avtare_model.dart';
import 'drawe_avater_list.dart';
import 'drawer_bottom.dart';
import 'drawer_list.dart';



class DeskTopDrawer extends StatelessWidget {
  const DeskTopDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 20),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 23),
              child: TopDrawer(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: DrawerAvatarList(
                model: DrawerAvatarModel(image: AppImages.imagesFrame, title: "Lekan Okeowo", supTitle: "demo@gmail.com"),
              ),
            ),
          ),
          DrawerList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child:Column(
              children: [
                Spacer(),
                DrawerBottom()
              ],
            )
          ),
        ],
      ),
    );
  }
}

