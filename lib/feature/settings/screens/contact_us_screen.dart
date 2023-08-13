import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        title: 'Contact Us',
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset('assets/svg/contact_us/send_unchecked.svg'),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Image.asset('assets/png/contact_us/contact_us.png'),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              children: [
                const Text("Email", style: AppTextStyles.poppinsBlackBold20),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // controller: _emailController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    suffixIcon:
                        const Icon(Icons.check, color: AppColors.yellow),
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
                        borderSide: const BorderSide(color: AppColors.grey)),
                  ),
                  // validator: _validateEmail,
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     // Fluttertoast.showToast(msg: 'Enter your Email');
                  //     return 'Please write your email';
                  //   }
                  //   if (_regexEmail.hasMatch(value!)) {
                  //     // Fluttertoast.showToast(
                  //     //     msg: "Please enter valid Email address");
                  //     return 'Please enter valid Email address';
                  //   }
                  //   return null;
                  // },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
