import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsiveadaptive/dash_doard/core/style/app_style.dart';

import '../core/class/app_colors.dart';
import '../core/model/drawer_dash_model.dart';


class DrawerDashBoardItem extends StatelessWidget {
  const DrawerDashBoardItem({
    super.key, required this.model,
    required this.isSelected
  });

 final DrawerDashModel model;
 final bool isSelected ;
  @override
  Widget build(BuildContext context) {
    return ! isSelected ?
      ListTile(
      leading: SvgPicture.asset(model.image),
      title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(model.title,style: AppStyle.styleRegular16(context).copyWith(
            color: AppColors.primaryColorDark
          ))),
    ):
      ListTile(
      leading: SvgPicture.asset(model.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(model.title,style: AppStyle.styleRegular16(context).copyWith(
            color: AppColors.primaryColorLight
        ),),
      ),
       trailing: Container(
         width: 3.73,
         height: 45,
         color: AppColors.primaryColorLight,
       ),
    );
  }
}
