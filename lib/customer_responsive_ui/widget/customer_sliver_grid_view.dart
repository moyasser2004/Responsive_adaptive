import 'package:flutter/material.dart';

import 'customer_sliver_grid_container.dart';


class CustomerSliverGridview extends StatelessWidget {
  const CustomerSliverGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context,index) => const CustomerSliverGridviewContainer() ,
    );
  }
}

