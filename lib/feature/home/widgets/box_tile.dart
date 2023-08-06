import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/colors.dart';

class BoxTile extends StatelessWidget {
  const BoxTile({required this.image, Key? key}) : super(key: key);
  final SvgPicture image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.grey.withOpacity(0.4)),
          color: const Color(0xfff7f8fa)),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          child: Column(
            children: [image],
          )),
    );
  }
}
