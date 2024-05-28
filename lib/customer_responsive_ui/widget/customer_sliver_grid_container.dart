import 'package:flutter/material.dart';



class CustomerSliverGridviewContainer extends StatelessWidget {

  const CustomerSliverGridviewContainer({
    super.key,
     this.height = 0
  });

  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey.shade600,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
