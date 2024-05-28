import 'package:flutter/material.dart';

import 'customer_sliver_grid_container.dart';


class CustomerSliverListView extends StatelessWidget {
  const CustomerSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 20,
      itemBuilder: (context,  index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: CustomerSliverGridviewContainer(height: 100,),
      )
    );
  }
}
