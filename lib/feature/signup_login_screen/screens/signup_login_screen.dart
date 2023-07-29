import 'package:flutter/material.dart';
import 'package:hola_home/core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';
import 'package:hola_home/feature/signup_login_screen/screens/login_screen.dart';
import 'package:hola_home/feature/signup_login_screen/screens/signup_screen.dart';

class SignupLoginScreen extends StatelessWidget {
  const SignupLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldWhite,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const _Images(),
                const SizedBox(height: 60),
                const _SignupLoginButtons(),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => ),
                    // );
                  },
                  child: const Text("Skip and Start Browsing",
                      style: AppTextStyles.poppinsBlackBold20),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Images extends StatelessWidget {
  const _Images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/png/signup-login.png',
        ),
        Image.asset(
          'assets/png/black_hola_home.png',
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }
}

class _SignupLoginButtons extends StatelessWidget {
  const _SignupLoginButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 39, right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.yellow, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.yellow,
                ),
                child: Center(
                  child: Text(
                    "SignUp",
                    textAlign: TextAlign.center,
                    style:
                        AppTextStyles.poppinsBlackBold20.copyWith(fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 45),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.yellow, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.lightYellow,
                ),
                child: Center(
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style:
                        AppTextStyles.poppinsBlackBold20.copyWith(fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
