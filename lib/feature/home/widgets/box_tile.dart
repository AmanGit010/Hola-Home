import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';

class BoxTile extends StatelessWidget {
  const BoxTile({required this.image, required this.text, Key? key})
      : super(key: key);
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: AppColors.grey.withOpacity(0.4)),
              color: const Color(0xfff7f8fa)),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: SvgPicture.asset(image)),
        ),
        const SizedBox(height: 3),
        Text(text, style: AppTextStyles.poppinsBlack10.copyWith(fontSize: 15))
      ],
    );
  }
}
