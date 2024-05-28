import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../core/class/app_colors.dart';
import 'desk_rop_center_all_expenses_top.dart';
import 'desk_top_center_all_expenses_bottom.dart';

class DeskTopCenterAllExpenses extends StatelessWidget {
  const DeskTopCenterAllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.primaryColorWhiteLight),
      child: const Column(
        children: [
          DeskRopCenterAllExpensesTop(),
          DeskRopCenterAllExpensesBottom(),
        ],
      ),
    );
  }
}
