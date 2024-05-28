
import 'package:flutter/cupertino.dart';

import '../core/class/app_images.dart';
import '../core/model/drawer_dash_model.dart';
import 'drawer_dash_board_item.dart';

class DrawerBottom extends StatelessWidget {
  const DrawerBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerDashBoardItem(model: DrawerDashModel(title: 'Setting system', image: AppImages.imagesSetting2), isSelected: false,),
        DrawerDashBoardItem(model: DrawerDashModel(title: 'Logout account', image: AppImages.imagesLogout), isSelected: false,),
      ],
    );
  }
}
