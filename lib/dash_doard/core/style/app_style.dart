import 'package:flutter/material.dart';

import '../../../text/app_text.dart';

abstract class AppStyle {
  static TextStyle styleRegular18(BuildContext context) => TextStyle(
      fontSize: AppTextScales.textScaleFactor(context) * 18,
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
      color: const Color(0xff4EB7F2));

  static TextStyle styleRegular16(BuildContext context) => TextStyle(
      fontSize: AppTextScales.textScaleFactor(context) * 16,
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
      color: const Color(0xffAAAAAA));

  static TextStyle styleRegular14(BuildContext context) => TextStyle(
      fontSize: AppTextScales.textScaleFactor(context) * 14,
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
      color: const Color(0xffAAAAAA));

  static TextStyle styleRegular12(BuildContext context) => TextStyle(
      fontSize: AppTextScales.textScaleFactor(context) * 12,
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
      color: const Color(0xffAAAAAA));

  static TextStyle styleMedium16(BuildContext context) => TextStyle(
        fontSize: AppTextScales.textScaleFactor(context) * 16,
        fontWeight: FontWeight.w500,
        fontFamily: "Montserrat",
        color: const Color(0xff064061),
      );

  static TextStyle styleMedium20(BuildContext context) => TextStyle(
        fontSize: AppTextScales.textScaleFactor(context) * 20,
        fontWeight: FontWeight.w500,
        fontFamily: "Montserrat",
        color: const Color(0xffFFFFFF),
      );

  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
        fontSize: AppTextScales.textScaleFactor(context) * 16,
        fontWeight: FontWeight.w600,
        fontFamily: "Montserrat",
        color: const Color(0xff064061),
      );

  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
      fontSize: AppTextScales.textScaleFactor(context) * 20,
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
      color: const Color(0xff064061));

  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
      fontSize: AppTextScales.textScaleFactor(context) * 24,
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
      color: const Color(0xff4EB7F2));

  static TextStyle styleBold16(BuildContext context) => TextStyle(
      fontSize: AppTextScales.textScaleFactor(context) * 16,
      fontWeight: FontWeight.w700,
      fontFamily: "Montserrat",
      color: const Color(0xff4EB7F2));
}
