import 'package:flutter/material.dart';

import '../customer_mobile_app_bar.dart';
import '../customer_mobile_drawer.dart';
import '../customer_sliver_grid_view.dart';
import '../customer_sliver_list_view.dart';


class MobileLayOut extends StatefulWidget {
  const MobileLayOut({super.key});
  @override
  State<MobileLayOut> createState() => _MobileLayOutState();
}

class _MobileLayOutState extends State<MobileLayOut> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: CustomerMobileAppBar(scaffoldKey: scaffoldKey,),
      drawer: const CustomerMobileDrawer(),
      body:const Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
         child: CustomScrollView(
           slivers: [
             SliverToBoxAdapter(
               child: SizedBox(
                 height: 16,
               ),
             ),
             CustomerSliverGridview(),
             CustomerSliverListView(),
           ],
         ) ,
      ) ,
    );
  }
}

