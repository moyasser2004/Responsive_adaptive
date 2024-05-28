import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      //  title: 'Donate Screen Prototype',
      title: 'Set Date Prototype',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home:
      const SetDateScreen(),
     // const DonateScreen(),
    );
  }
}


class SetDateScreen extends StatefulWidget {
  const SetDateScreen({super.key});

  @override
  State<SetDateScreen> createState() => _SetDateScreenState();
}

class _SetDateScreenState extends State<SetDateScreen> {


  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            const BackButton(), // Replace with your own back button if needed
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(40, 14, 40, 7),
        child: ElevatedButton(
          onPressed: () {
            // TODO: Implement your done button handler
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(.8),
            minimumSize: const Size(double.infinity, 50),
          ),
          child: const Text(
            'Done',
            style: TextStyle(
                fontFamily: "Avenir",
                color: Colors.white,
                fontSize: 26,
                letterSpacing: 3,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Expanded(
                child: Column(
              children: [
                const Text(
                  'Set Date',
                  style: TextStyle(
                    fontFamily: "Avenir",
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 2),
                ),
                Text(
                  'Select date you want to be notified ! ',
                  style: TextStyle(
                      fontFamily: "BergenMono",
                      color: Colors.grey.shade600,
                      fontSize: 24,),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ],
            )),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Date : ',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    height: 30,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: DateFormat('yyyy-MM-dd').format(selectedDate),
                        contentPadding: const EdgeInsets.all(0),
                        border: buildOutlineInputBorder(context),
                        disabledBorder: buildOutlineInputBorder(context),
                        enabledBorder: buildOutlineInputBorder(context),
                      ),
                      onTap: ()=> _selectDate(context),
                    ),
                  ),
                ),
                const Expanded(
                    child: Icon(
                  Icons.date_range_outlined,
                  size: 30,
                )),
              ],
            ),
             Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'images/Picsart_24-03-19_15-07-34-003.png',
                    height: 220,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(BuildContext context) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(
            color: Theme.of(context).primaryColor.withOpacity(.3), width: 2));
  }
}

//
// class DonateScreen extends StatelessWidget {
//   const DonateScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(18),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               const Spacer(),
//               const Text("Donate",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,letterSpacing: 5),),
//                Expanded(
//                  flex: 5,
//                 child: Row(
//                   children: [
//                     Expanded(
//                         child: SizedBox(
//                           height: 220,
//                           child: Stack(
//                             children: [
//                               const DonationOption(
//                                 label: 'food',
//                                 icon: Icons.attach_money,
//                               ),
//                               Align(
//                                 alignment: Alignment.bottomCenter,
//                                 child:Image.asset("images/Picsart_24-03-19_00-23-24-161.png",height: 100,)
//                               ),
//                             ],
//                           ),
//                         )
//                     ),
//                     const SizedBox(width: 24,),
//                     Expanded(
//                       child: SizedBox(
//                           height: 220,
//                         child: Stack(
//                           children: [
//                             const DonationOption(
//                               color: Colors.deepPurple,
//                               label: 'mone',
//                               fontColor: Colors.white,
//                               icon: Icons.attach_money,
//                             ),
//                             Align(
//                               alignment: Alignment.bottomRight,
//                               child: Image.asset("images/Picsart_24-03-19_01-27-05-307.png",height: 110,)
//                             ),
//                           ],
//                         ),
//                       )
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: InkWell(
//                   onTap: (){},
//                   child: const Row(
//                     children: [
//                       Expanded(
//                         flex:10,
//                           child:Text('Find nearest Food  Bank Branch',style: TextStyle(fontWeight: FontWeight.w900,letterSpacing:4,wordSpacing: 9,color: Colors.black,fontSize: 24,),maxLines: 2,)),
//                       Flexible(
//                         child: Stack(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(left: 10),
//                               child: Icon(Icons.arrow_forward_ios_rounded,size: 28,),
//                             ),
//                             Icon(Icons.arrow_forward_ios_rounded,size: 28,),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               const Spacer(
//                 flex: 2,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class DonationOption extends StatelessWidget {
//   final String label;
//   final IconData icon;
//   final Color color;
//   final Color fontColor;
//
//   const DonationOption({
//     super.key,
//     required this.label,
//     required this.icon,
//     this.color = Colors.white,
//      this.fontColor = Colors.black,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // Handle tapping on the donation option
//       },
//       child: AspectRatio(
//         aspectRatio: 1,
//         child: Container(
//           decoration: BoxDecoration(
//             color: color,
//             border: Border.all(
//               color: Colors.black54,
//               width: 1,
//             ),
//             borderRadius: BorderRadius.circular(50),
//           ),
//           child:Center(
//             child: Text(label,style:  TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: fontColor,fontFamily: "Odisseia",),),
//           )
//         ),
//       ),
//     );
//   }
// }
