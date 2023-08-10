import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/colors.dart';
import '../screens/no_result_screen.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const NoResultScreen())),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: 5,
                  color: Colors.black.withOpacity(0.25))
            ],
            color: Colors.white,
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.asset('assets/svg/app/filter_icon.svg'),
        ),
      ),
    );
  }
}
