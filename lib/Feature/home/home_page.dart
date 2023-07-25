import 'package:flutter/material.dart';
import 'package:hola_home/Core/constants/colors.dart';
import 'package:hola_home/Feature/signup-login/signup_login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                'assets/png/onboarding2.png',
                fit: BoxFit.fitWidth,
                height: 450,
                width: 500,
              ),
              const SizedBox(
                height: 25,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupLogin()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'PoppinsReg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupLogin()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 320,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: colors.yellow),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
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
              Container(
                alignment: Alignment.center,
                width: 320,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: colors.yellow, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 255, 235, 153),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Skip",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'PoppinsBold', fontSize: 20),
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
