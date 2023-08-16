import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../main/screens/main_screen.dart';

class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.white,
            foregroundImage: AssetImage('assets/png/app/pin.png'),
          ),
          const SizedBox(height: 20),
          const Text("Enable Location", style: AppTextStyles.latoBlackBold30),
          const SizedBox(height: 20),
          const Text(
              "Please allow the location services \nwhile using the app for better \nexperience.",
              textAlign: TextAlign.center,
              style: AppTextStyles.latoBlack20),
          const SizedBox(height: 55),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 75),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.25)),
                  ],
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.yellow,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  child: Text(
                    'Enable Location',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.latoBlack20,
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
