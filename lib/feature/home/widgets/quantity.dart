import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';

class Quantity extends StatefulWidget {
  const Quantity({Key? key}) : super(key: key);

  @override
  State<Quantity> createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () => setState(() {
            if (value > 0) {
              value--;
            }
          }),
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.fillColorTFF,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.grey)),
            child: const Icon(Icons.remove, color: AppColors.grey),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
              color: AppColors.fillColorTFF,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.grey)),
          child: Text(
            "$value",
            style: AppTextStyles.poppinsBlack20,
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () => setState(() {
            value++;
          }),
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.fillColorTFF,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.grey)),
            child: const Icon(Icons.add, color: AppColors.grey),
          ),
        ),
      ],
    );
  }
}
