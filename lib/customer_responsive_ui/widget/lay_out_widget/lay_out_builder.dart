import 'package:flutter/material.dart';



class LayOutBuilder extends StatelessWidget {

  const LayOutBuilder({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  final WidgetBuilder  mobile, tablet, desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        if (constraints.maxWidth < 600) {
          return mobile(context);
        } else if (constraints.maxWidth < 1025) {
          return tablet(context);
        } else {
          return desktop(context);
        }
      },
    );
  }
}
