import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';
import 'profile_screen.dart';

class ProfileLandingScreen extends StatelessWidget {
  const ProfileLandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Profile',
        center: true,
      ),
      body: Column(
        children: [
          const Spacer(),
          Image.asset('assets/png/profile/landing.png'),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 85),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen())),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.25))
                  ],
                  border: Border.all(color: AppColors.yellow, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.yellow,
                ),
                child: Center(
                  child: Text(
                    'LOGIN',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.poppinsBlackBold20
                        .copyWith(color: AppColors.lightBlack),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 17),
          Padding(
            padding: const EdgeInsets.only(left: 85, right: 85, bottom: 90),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.25))
                  ],
                  border: Border.all(color: AppColors.yellow, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.yellow,
                ),
                child: Center(
                  child: Text(
                    'SIGN UP',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.poppinsBlackBold20
                        .copyWith(color: AppColors.lightBlack),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
