import 'package:flutter/material.dart';


class CustomerMobileAppBar extends StatelessWidget implements PreferredSizeWidget{

  const CustomerMobileAppBar({
    super.key,
    required this.scaffoldKey
  });
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
          icon: const Icon(Icons.menu,color: Colors.white,size: 30,),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          }
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(47);
}
