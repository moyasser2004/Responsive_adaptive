import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../core/class/app_colors.dart';
import '../core/class/app_images.dart';


class TopDrawer extends StatelessWidget {
  const TopDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: AppColors.color19,
      child: Center(
        child: SvgPicture.asset(AppImages.imagesGallery),
      ),
    );
  }
}