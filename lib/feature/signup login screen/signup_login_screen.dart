import 'package:flutter/material.dart';
import 'package:hola_home/Core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';
import 'package:hola_home/feature/signup%20login%20screen/signup_screen.dart';

class SignupLoginScreen extends StatelessWidget {
  const SignupLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(child: _image()),
            const Expanded(child: _SecImage()),
            // Image.asset(
            //   'assets/png/signup-login.png',
            // ),
            // Image.asset(
            //   'assets/png/black_hola_home.png',
            //   scale: 1.2,
            // ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.yellow),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("SignUp",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.poppinsBlackBold20),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupLoginScreen()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.yellow, width: 2.0),
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.lightYellow,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.poppinsBlackBold20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
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
      ),
    );
  }
}

class _image extends StatelessWidget {
  const _image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/png/signup-login.png',
      fit: BoxFit.fitWidth,
    );
  }
}

class _SecImage extends StatelessWidget {
  const _SecImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/png/black_hola_home.png',
      fit: BoxFit.fitWidth,
    );
  }
}
