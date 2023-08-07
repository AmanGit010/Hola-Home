import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../store/home_store.dart';

class Quantity extends StatelessWidget {
  Quantity({Key? key}) : super(key: key);

  // int value = 0;
  final HomeStore homeStore = HomeStore();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: homeStore.decre,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: homeStore.containerColor,
                borderRadius: BorderRadius.circular(10),
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
          child: Observer(
              builder: (_) => Text(
                    '${homeStore.value}',
                    style: AppTextStyles.poppinsBlack20,
                  )),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: homeStore.incre,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: homeStore.containerColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.grey)),
            child: const Icon(Icons.add, color: AppColors.grey),
          ),
        ),
      ],
    );
  }
}
