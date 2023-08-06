// ignore_for_file: avoid_field_initializers_in_const_classes

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../qna/qna_screen.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final RegExp _regexEmail = RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]");
  final RegExp _regexPass = RegExp(r'^.{5,}$');

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.black,
              )),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // IconButton(
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     icon: const Icon(
                //       Icons.arrow_back,
                //       color: AppColors.black,
                //     )),
                const Padding(
                    padding: EdgeInsets.only(left: 31),
                    child: Text(
                      "Create your \nAccount",
                      style: AppTextStyles.poppinsBlackBold35,
                    )),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            fillColor: AppColors.fillColorTFF,
                            filled: true,
                            labelText: 'Email',
                            labelStyle: AppTextStyles.poppinsBlackBold20,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide: const BorderSide(
                                    color: AppColors.yellow, width: 2)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide:
                                    const BorderSide(color: AppColors.grey)),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username cannot be empty";
                            }
                            if (!_regexEmail.hasMatch(value)) {
                              return "Please enter valid email address";
                            }

                            return null;
                          },
                        ),
                        const SizedBox(height: 25),
                        TextFormField(
                          obscureText: _obscureText,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off_outlined,
                                  color: AppColors.grey,
                                ),
                                onPressed: _togglePasswordVisibility),
                            fillColor: AppColors.fillColorTFF,
                            filled: true,
                            labelText: 'Password',
                            labelStyle: AppTextStyles.poppinsBlackBold20,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide: const BorderSide(
                                    color: AppColors.yellow, width: 2)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide:
                                    const BorderSide(color: AppColors.grey)),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            }
                            if (!_regexPass.hasMatch(value)) {
                              return "Enter a valid password (min. 5 char)";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QnAScreen()),
                        );
                      }
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
                          child: Text("Sign Up",
                              textAlign: TextAlign.center,
                              style: AppTextStyles.poppinsBlackBold20),
                        ),
                      ),
                    ),
                  ),
                ),
                const _SignupScreenContinued(),
              ],
            ),
          ),
        ));
  }
}

class _SignupScreenContinued extends StatelessWidget {
  const _SignupScreenContinued({Key? key}) : super(key: key);

  final String appleLogo = 'assets/svg/apple_logo.svg';
  final String googleLogo = 'assets/svg/google_logo.svg';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Text("or",
            style: AppTextStyles.poppinsBlack20
                .copyWith(color: AppColors.black, fontSize: 23)),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.borderGrey),
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
                  border: Border.all(color: AppColors.borderGrey),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(googleLogo),
                  const SizedBox(width: 60),
                  const Padding(
                    padding: EdgeInsets.only(right: 62),
                    child: Text("Continue with Google",
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
              const Text("Already have an account?  ",
                  style: AppTextStyles.poppinsBlack20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Text(
                  "Sign in",
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

bool isEmailValid(String email) {
  // You can use a regular expression or any other method to validate the email
  // In this example, a simple pattern check is used
  return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
}
