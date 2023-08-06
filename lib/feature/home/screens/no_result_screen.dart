import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import 'home_screen.dart';
import 'search_result_screen.dart';

class NoResultScreen extends StatelessWidget {
  const NoResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/png/no_result.png'),
          const Text(
            "Oops!!",
            style: AppTextStyles.poppinsBlackBold20,
          ),
          const SizedBox(height: 15),
          Text("No result found. Please change the filters\nand search again.",
              textAlign: TextAlign.center,
              style:
                  AppTextStyles.poppinsBlack20.copyWith(color: AppColors.grey)),
          const SizedBox(height: 200),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 62),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchResult()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.yellow, width: 2),
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.yellow,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  child: Text(
                    'Change Filters',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.latoBlack20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 62),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.yellow, width: 2),
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.lightYellow,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  child: Text(
                    'Go Back to Home page',
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
