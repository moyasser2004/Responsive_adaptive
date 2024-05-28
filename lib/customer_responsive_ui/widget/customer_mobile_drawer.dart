import 'package:flutter/material.dart';

import '../../model/drawer_model.dart';


class CustomerMobileDrawer extends StatelessWidget {
  const CustomerMobileDrawer({super.key});

static List<DrawerModel> drawerList = [
    DrawerModel(title: 'Home', icon: Icons.home),
    DrawerModel(title: 'Home', icon: Icons.home),
    DrawerModel(title: 'Home', icon: Icons.home),
  ];

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      width: 300,
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(Icons.favorite_rounded,color: Colors.black,size: 60,),
          ),
          ...List.generate(
              drawerList.length,(index)=>ListTile(
            leading: Icon(drawerList[index].icon,size: 26,),
            title: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(drawerList[index].title,style: const TextStyle(fontSize: 24),),
            )
          )
          )
        ]
      ),
    );
  }
}
