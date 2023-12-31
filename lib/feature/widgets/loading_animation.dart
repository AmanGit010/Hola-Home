import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../core/constants/colors.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SpinKitCircle(
          color: AppColors.yellow,
          size: 60,
        ),
      ],
    );
  }
}
