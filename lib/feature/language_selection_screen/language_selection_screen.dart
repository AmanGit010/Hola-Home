import 'package:flutter/material.dart';
import 'package:hola_home/core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';
import 'package:hola_home/feature/enable_location_screen/enable_location_screen.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({Key? key}) : super(key: key);

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 90),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: Text(
                    "Choose the\nLanguage",
                    style:
                        AppTextStyles.poppinsBlackBold35.copyWith(fontSize: 45),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: AppColors.lightYellow,
                          border: Border.all(color: AppColors.yellow),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/png/english.png'),
                          const SizedBox(width: 20),
                          const Text(
                            "English",
                            style: AppTextStyles.poppinsBlack20,
                          ),
                          const SizedBox(width: 170),
                          Checkbox(
                            value: _isChecked,
                            activeColor: AppColors.yellow,
                            shape: const CircleBorder(eccentricity: 1.0),
                            onChanged: (newValue) {
                              setState(() {
                                _isChecked = newValue!;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: AppColors.lightYellow,
                          border: Border.all(color: AppColors.yellow),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/png/english.png'),
                          const SizedBox(width: 20),
                          const Text(
                            "Chinese",
                            style: AppTextStyles.poppinsBlack20,
                          ),
                          const SizedBox(width: 170),
                          Checkbox(
                            value: _isChecked,
                            activeColor: AppColors.yellow,
                            shape: const CircleBorder(eccentricity: 1.0),
                            onChanged: (newValue) {
                              setState(() {
                                _isChecked = newValue!;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: AppColors.lightYellow,
                          border: Border.all(color: AppColors.yellow),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/png/english.png'),
                          const SizedBox(width: 20),
                          const Text(
                            "German",
                            style: AppTextStyles.poppinsBlack20,
                          ),
                          const SizedBox(width: 170),
                          Checkbox(
                            value: _isChecked,
                            activeColor: AppColors.yellow,
                            shape: const CircleBorder(eccentricity: 1.0),
                            onChanged: (newValue) {
                              setState(() {
                                _isChecked = newValue!;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: AppColors.lightYellow,
                          border: Border.all(color: AppColors.yellow),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/png/english.png'),
                          const SizedBox(width: 20),
                          const Text(
                            "Spanish",
                            style: AppTextStyles.poppinsBlack20,
                          ),
                          const SizedBox(width: 170),
                          Checkbox(
                            value: _isChecked,
                            activeColor: AppColors.yellow,
                            shape: const CircleBorder(eccentricity: 1.0),
                            onChanged: (newValue) {
                              setState(() {
                                _isChecked = newValue!;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 250),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const EnableLocationScreen()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.yellow, width: 2.0),
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.yellow,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 46),
                        child: Text(
                          'Continue',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.poppinsBlackBold20,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
