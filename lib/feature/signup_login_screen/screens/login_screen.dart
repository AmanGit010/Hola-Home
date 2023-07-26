import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hola_home/Core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';
import 'package:hola_home/feature/forgot_password_screen/screens/forgot_password_screen.dart';
import 'package:hola_home/feature/signup_login_screen/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 125, top: 30),
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Login to your\n",
                          style: AppTextStyles.poppinsBlackBold35,
                        ),
                        TextSpan(
                          text: "Account",
                          style: AppTextStyles.poppinsBlackBold35,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: const Color(0xfff7f8fa),
                      filled: true,
                      label: const Text('Email'),
                      labelStyle: AppTextStyles.poppinsBlackBold20,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: const BorderSide(
                              color: AppColors.yellow, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      fillColor: const Color(0xfff7f8fa),
                      filled: true,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off_outlined,
                          color: Colors.grey,
                        ),
                        onPressed: _togglePasswordVisibility,
                      ),
                      label: const Text('Password'),
                      labelStyle: AppTextStyles.poppinsBlackBold20,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: const BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: const BorderSide(
                              color: AppColors.yellow, width: 2)),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SignupLogin()),
                      // );
                    },
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        alignment: Alignment.center,
                        height: 55,
                        decoration: BoxDecoration(
                          color: AppColors.yellow,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Sign in",
                              textAlign: TextAlign.center,
                              style: AppTextStyles.poppinsBlackBold20),
                        ),
                      ),
                    ),
                  ),
                ),
                const _LoginScreenContinued(),
              ],
            ),
          ),
        ));
  }
}

class _LoginScreenContinued extends StatelessWidget {
  const _LoginScreenContinued({Key? key}) : super(key: key);

  final String appleLogo = 'assets/svg/apple_logo.svg';
  final String googleLogo = 'assets/svg/google_logo.svg';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ForgotPasswordScreen()));
          },
          child: Text(
            "Forgot the password?",
            style:
                AppTextStyles.poppinsBlack20.copyWith(color: AppColors.yellow),
          ),
        ),
        const SizedBox(height: 20),
        Text("or",
            style: AppTextStyles.poppinsBlack20
                .copyWith(color: Colors.black, fontSize: 23)),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 206, 206, 206)),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(appleLogo),
                  const SizedBox(width: 60),
                  const Padding(
                    padding: EdgeInsets.only(right: 75),
                    child: Text("Continue with Apple",
                        style: AppTextStyles.poppinsBlack20),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 210, 210, 210)),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(googleLogo),
                  const SizedBox(width: 60),
                  const Padding(
                    padding: EdgeInsets.only(right: 75),
                    child: Text("Continue with Apple",
                        style: AppTextStyles.poppinsBlack20),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?  ",
                  style: AppTextStyles.poppinsBlack20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()));
                },
                child: Text(
                  "Sign up",
                  style: AppTextStyles.poppinsBlackBold20
                      .copyWith(color: AppColors.yellow),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        )
      ],
    );
  }
}
