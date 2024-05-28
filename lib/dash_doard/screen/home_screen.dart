import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/core/class/app_colors.dart';

import '../widget/desk_drop_drawer.dart';
import '../widget/dsek_top_center.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackGround,
      body: Row(
        children: [
          const Expanded(
            flex: 1,
            child: DeskTopDrawer()
          ),
          const Expanded(
            flex: 3,
            child: DeskTopCenter()
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
