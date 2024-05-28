// import 'package:flutter/material.dart';
//
// import '../widget/lay_out_widget/lay_out_builder.dart';
//
//
// class SecondScreen extends StatelessWidget {
//   const SecondScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxWidth < 600) {
//           return mobile(context);
//         } else if (constraints.maxWidth < 900) {
//           return tablet(context);
//         } else {
//           return desktop(context);
//         }
//       },
//     );
// }
