import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/profile_pic.dart';

class ProfileInformationScreen extends StatelessWidget {
  const ProfileInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Profile Information',
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "Edit",
              style: AppTextStyles.poppinsBlackBold20
                  .copyWith(color: AppColors.yellow),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              ProfilePic(
                  image: Image.asset('assets/png/app/pic.png'),
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: AppColors.yellow,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
