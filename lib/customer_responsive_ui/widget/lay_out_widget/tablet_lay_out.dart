import 'package:flutter/material.dart';

import '../customer_sliver_list_view.dart';
import '../customer_sliver_upper_list.dart';



class TabletLayOut extends StatelessWidget {
  const TabletLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: CustomScrollView(
          slivers: [
             SliverSafeArea(
               sliver: CustomerSliverUpperList(),
             ),
             CustomerSliverListView(),
          ],
        ),
      ) ,
    );
  }
}
