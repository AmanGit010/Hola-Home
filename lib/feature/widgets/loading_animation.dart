import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hola_home/core/constants/colors.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpinKitCircle(
          color: AppColors.yellow,
          size: 60.0,
        ),
      ],
    );
  }
}
