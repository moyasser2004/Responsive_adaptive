import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
          child: IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    child: const Column(
                      children: [
                        Icon(Icons.co2,size: 100,),
                        Icon(Icons.co2,size: 100,),
                        Icon(Icons.co2,size: 100,),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        child: Column(
                          children: [
                            Icon(Icons.co2,size: 100,),
                            Icon(Icons.co2,size: 100,),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.black,
                        child: Column(
                          children: [
                            Icon(Icons.co2,size: 100,),
                            Icon(Icons.co2,size: 100,),
                          ],
                        ),
                      ),
                    ),
                  ],)
                )
              ],
            ),
          ),
        )
    );
  }
}







// Center(
// child: SizedBox(
// height: height/3,
// child: Row(
// children: [
// Expanded(
// child: Container(
// color: Colors.grey,
// ),
// ),
// Expanded(
// child: Column(
// children: [
// Expanded(
// child: Container(
// color: Colors.red,
// ),
// ),
// Expanded(
// child: Container(
// color: Colors.black,
// ),
// ),
// ],)
// )
// ],
// ),
// ),
// )


// Align(
// alignment: Alignment.topCenter,
// child: AspectRatio(
// aspectRatio: 10/1,
// child: Container(
// height: height/50,
// color: Colors.red,
// ),
// ),
// )


// GridView.builder(
// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// mainAxisSpacing: 10,
// crossAxisSpacing: 10
// ),
// itemBuilder: (BuildContext context, int index)=>FittedBox(child: Image.network("https://picsum.photos/200/300")) ,
// itemCount: 4,
// )


// Column(
// children: [
// const Flexible(
// child: FittedBox(
// child: Icon(Icons.add,size: 100,))
// ),
// Expanded(
// child: Container(
// height: 200,
// color: Colors.red,
// child: FittedBox(child: Icon(Icons.abc)),
// ),
// ),
// Container(
// height: 200,
// color: Colors.grey,
// ),
// ],
// )

////////////////////////////////////////////
// Row(
// // crossAxisAlignment: CrossAxisAlignment.stretch,
// children: [
// Expanded(
// child: Container(
// color: Colors.grey,
// ),
// ),
// Expanded(
// child: Container(
// color: Colors.black,
// ),
// ),
// Expanded(
// child: Container(
// color: Colors.red,
// ),
// ),
// ],
// ),
