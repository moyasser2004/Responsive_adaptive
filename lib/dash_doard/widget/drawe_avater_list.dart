import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsiveadaptive/dash_doard/core/class/app_colors.dart';
import 'package:responsiveadaptive/dash_doard/core/style/app_style.dart';

import '../core/model/drawer_avtare_model.dart';

class DrawerAvatarList extends StatelessWidget {
  const DrawerAvatarList({super.key, required this.model});
  final DrawerAvatarModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryColorWhiteLight,
      child: ListTile(
        leading: SvgPicture.asset(model.image),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            model.title,
            style: AppStyle.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              model.supTitle,
              style: AppStyle.styleRegular12(context),
            )),
      ),
    );
  }
}
