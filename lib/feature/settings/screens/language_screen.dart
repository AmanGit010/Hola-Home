import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../home/screens/home_screen.dart';
import '../../widgets/appbar_widget.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Languages'),
      body: Column(
        children: [
          const SizedBox(height: 30),
          _LanguageTile(
              image: Image.asset('assets/png/flags/english.png'),
              language: 'English'),
          const SizedBox(height: 20),
          _LanguageTile(
              image: Image.asset('assets/png/flags/chinese.png'),
              language: 'Chinese'),
          const SizedBox(height: 20),
          _LanguageTile(
              image: Image.asset('assets/png/flags/german.png'),
              language: 'German'),
          const SizedBox(height: 20),
          _LanguageTile(
              image: Image.asset('assets/png/flags/spanish.png'),
              language: 'Spanish'),
          const SizedBox(height: 20),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 45, left: 32, right: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.25))
                  ],
                  border: Border.all(color: AppColors.yellow, width: 2),
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.yellow,
                ),
                child: Center(
                  child: Text(
                    "Continue",
                    textAlign: TextAlign.center,
                    style:
                        AppTextStyles.poppinsBlackBold20.copyWith(fontSize: 16),
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

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({required this.image, required this.language, Key? key})
      : super(key: key);
  final bool _isChecked = false;

  final Image image;
  final String language;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
              color: AppColors.lightYellow,
              border: Border.all(color: AppColors.yellow),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  image,
                  const SizedBox(width: 20),
                  Text(
                    language,
                    style: AppTextStyles.poppinsBlack20,
                  ),
                ],
              ),
              Checkbox(
                value: _isChecked,
                shape: const CircleBorder(eccentricity: 1),
                onChanged: (newValue) {
                  // setState(() {
                  //   _isChecked = newValue!;
                  // });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
