import 'package:flutter/material.dart';
import 'package:responsiveadaptive/text/app_text.dart';



class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return  Scaffold(
      appBar: AppBar(
        leading: Text("Hello this is flutter project",
          style: TextStyle(fontSize:AppTextScales.textScaleFactor(context)*18
          ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello this is flutter project",
            style: TextStyle(fontSize:AppTextScales.textScaleFactor(context)*18
            ),),
          const SizedBox(height: 10,),
          const Text("Hello this is flutter project",style: TextStyle(fontSize: 18,),)
        ],
      ),
    );
  }
}
