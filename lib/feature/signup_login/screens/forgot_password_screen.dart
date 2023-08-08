import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
// import 'package:hola_home/feature/signup_login_screen/forgot_password_screen/screens/otp_verification_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  Color container1Color = AppColors.lightYellow;
  Color container2Color = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Forgot password'),
        titleTextStyle: AppTextStyles.poppinsBlackBold20.copyWith(fontSize: 25),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(children: [
              const SizedBox(height: 30),
              SvgPicture.asset('assets/svg/unlock.svg'),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: Text(
                  "Select which contact details should we use to reset your password",
                  style: AppTextStyles.poppinsBlackBold20,
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  setState(() {
                    container1Color = AppColors.lightYellow;
                    container2Color = Colors.transparent;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    decoration: BoxDecoration(
                        color: container1Color,
                        border: Border.all(color: AppColors.yellow),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        const SizedBox(width: 30),
                        const Icon(
                          Icons.messenger_rounded,
                          color: AppColors.yellow,
                          size: 45,
                        ),
                        const SizedBox(width: 50),
                        Text(
                          "via SMS: \n +91 98******99",
                          style: AppTextStyles.poppinsBlack20
                              .copyWith(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  setState(() {
                    container1Color = Colors.transparent;
                    container2Color = AppColors.lightYellow;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    decoration: BoxDecoration(
                        color: container2Color,
                        border: Border.all(color: AppColors.yellow),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        const SizedBox(width: 30),
                        const Icon(
                          Icons.mail,
                          color: AppColors.yellow,
                          size: 45,
                        ),
                        const SizedBox(width: 50),
                        Text(
                          "via Email: \n jay@yourDomain.com",
                          style: AppTextStyles.poppinsBlack20
                              .copyWith(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 120),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const OtpVerificationScreen()),
                    // );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.25))
                      ],
                      color: AppColors.yellow,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Continue",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.poppinsBlackBold20),
                    ),
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
