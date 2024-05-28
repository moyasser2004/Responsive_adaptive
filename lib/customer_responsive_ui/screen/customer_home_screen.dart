import 'package:flutter/material.dart';
import 'package:responsiveadaptive/customer_responsive_ui/widget/lay_out_widget/desktop_lay_out.dart';
import 'package:responsiveadaptive/customer_responsive_ui/widget/lay_out_widget/mobile_lay_out.dart';
import 'package:responsiveadaptive/customer_responsive_ui/widget/lay_out_widget/tablet_lay_out.dart';

import '../widget/lay_out_widget/lay_out_builder.dart';



class CustomerHomeScreen extends StatelessWidget {
  const CustomerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayOutBuilder(
      mobile: (BuildContext context) =>const MobileLayOut(),
      tablet: (BuildContext context) =>const TabletLayOut(),
      desktop: (BuildContext context) => const DesktopLayOut()

    );
  }
}

