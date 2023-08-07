import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../store/home_store.dart';

class DesignationTile extends StatelessWidget {
  const DesignationTile(
      {required this.des,
      required this.index,
      required this.homeStore,
      Key? key})
      : super(key: key);

  final String des;
  final int index;
  final HomeStore homeStore;

  @override
  Widget build(BuildContext context) {
    final HomeStore homeStore = HomeStore();
    const s = AppColors.yellow;
    const u = AppColors.lightYellow;
    return GestureDetector(
      onTap: () {
        homeStore.setSelectedIndex(index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: homeStore.selectedIndex == index ? s : u,
          // border:
        ),
        child: Text(des, style: AppTextStyles.poppinsBlack20),
      ),
    );
  }
}
