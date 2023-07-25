import 'package:flutter/material.dart';
import 'package:hola_home/Core/constants/colors.dart';
import 'package:hola_home/Feature/signup-login/signup.dart';

class SignupLogin extends StatelessWidget {
  const SignupLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/png/signup-login.png',
            ),
            Image.asset(
              'assets/png/black_hola_home.png',
              scale: 1.2,
            ),
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
                      MaterialPageRoute(builder: (context) => SignupLogin()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: colors.yellow),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "SignUp",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontFamily: 'PoppinsBold', fontSize: 20),
                      ),
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
                      MaterialPageRoute(builder: (context) => SignupLogin()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: colors.yellow, width: 2.0),
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 255, 235, 153),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontFamily: 'PoppinsBold', fontSize: 20),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: Text(
                "Skip and Start Browsing",
                style: TextStyle(
                    fontFamily: 'PoppinsReg',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
