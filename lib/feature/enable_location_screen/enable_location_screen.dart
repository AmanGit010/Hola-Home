import 'package:flutter/material.dart';
import 'package:hola_home/core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';
import 'package:hola_home/feature/home_screen/screens/home_screen.dart';

class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 200),
          const CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.white,
            foregroundImage: AssetImage('assets/png/pin.png'),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.yellow, width: 2.0),
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
          ),
        ],
      ),
    );
  }
}
