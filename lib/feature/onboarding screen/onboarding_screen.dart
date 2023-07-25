import 'package:flutter/material.dart';
import 'package:hola_home/Core/constants/colors.dart';
import 'package:hola_home/feature/signup%20login%20screen/signup_login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              Image.asset(
                'assets/png/onboarding.png',
                fit: BoxFit.fitWidth,
                height: 450,
                width: 500,
              ),
              const SizedBox(
                height: 25,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Find a dream holiday\n',
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'PoppinsBold'),
                    ),
                    TextSpan(
                      text: 'home',
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'PoppinsBold'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'PoppinsReg'),
                ),
              ),
              const SizedBox(
                height: 50,
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
                  width: 320,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.yellow),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Next",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PoppinsBold', fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
                  width: 320,
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.yellow, width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.lightYellow,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Skip",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'PoppinsBold', fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ))
          // TextSpan()
        ],
      ),
    ));
  }
}
