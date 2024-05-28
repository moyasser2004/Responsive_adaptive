import 'package:flutter/material.dart';
import 'package:responsiveadaptive/customer_responsive_ui/widget/customer_mobile_drawer.dart';
import 'package:responsiveadaptive/customer_responsive_ui/widget/customer_sliver_grid_container.dart';
import 'package:responsiveadaptive/customer_responsive_ui/widget/lay_out_widget/tablet_lay_out.dart';



class DesktopLayOut extends StatelessWidget {
  const DesktopLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Row(
          children: [
            Expanded(
              child:CustomerMobileDrawer()
            ),
            Expanded(
              flex: 3,
              child: TabletLayOut()
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                child: Column(
                  children: [
                    Expanded(
                      flex:2,
                      child: CustomerSliverGridviewContainer()
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Expanded(
                        child: CustomerSliverGridviewContainer()
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
