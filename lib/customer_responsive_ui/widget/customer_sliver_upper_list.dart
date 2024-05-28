import 'package:flutter/material.dart';
import 'package:responsiveadaptive/customer_responsive_ui/widget/customer_sliver_grid_container.dart';

class CustomerSliverUpperList extends StatelessWidget {
  const CustomerSliverUpperList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: SizedBox(
          height: 195,
          child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>  const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: AspectRatio(
                    aspectRatio: 1,
                    child: CustomerSliverGridviewContainer()
                ),
              ))
        )
    );
  }
}
