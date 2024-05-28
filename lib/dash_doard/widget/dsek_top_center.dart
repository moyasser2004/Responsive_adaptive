import 'package:flutter/material.dart';
import 'Desk_top_center-all_expenses.dart';


class DeskTopCenter extends StatelessWidget {
  const DeskTopCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:32,left: 32,right: 32),
      child: Column(
        children: [
          const Expanded(
            flex: 3,
            child: DeskTopCenterAllExpenses(),
          ),
          const SizedBox(height: 16,),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}



