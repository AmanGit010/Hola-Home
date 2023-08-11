import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/profile_pic.dart';

class ProfileInformationScreen extends StatelessWidget {
  const ProfileInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Profile Information',
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "Edit",
              style: AppTextStyles.poppinsBlackBold20
                  .copyWith(color: AppColors.yellow),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Stack(
            children: [
              ProfilePic(
                image: AssetImage('assets/png/app/pic.png'),
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: AppColors.yellow,
                ),
                radius: 60,
              ),
            ],
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("First Name",
                    style: AppTextStyles.poppinsBlackBold20),
                const SizedBox(height: 15),
                TextFormField(
                    textInputAction: TextInputAction.next,
                    // controller: _nameController,
                    decoration: InputDecoration(
                      fillColor: AppColors.fillColorTFF,
                      filled: true,
                      suffixIcon:
                          const Icon(Icons.check, color: AppColors.yellow),
                      labelText: 'Name',
                      labelStyle: AppTextStyles.poppinsBlackBold20,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: const BorderSide(
                              color: AppColors.yellow, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: const BorderSide(color: AppColors.grey)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        // Fluttertoast.showToast(msg: 'Enter your name');
                      }
                      return null;
                    }),
                const SizedBox(height: 15),
                const Text("Mobile Number",
                    style: AppTextStyles.poppinsBlackBold20),
                const SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // controller: _phoneController,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    fillColor: AppColors.fillColorTFF,
                    filled: true,
                    suffixIcon:
                        const Icon(Icons.check, color: AppColors.yellow),
                    prefixIcon: CountryCodePicker(
                      initialSelection: '+91',
                      showFlag: false,
                      showDropDownButton: true,
                      textStyle: AppTextStyles.poppinsBlack20
                          .copyWith(color: AppColors.grey),
                    ),
                    labelText: 'Phone Number',
                    labelStyle: AppTextStyles.poppinsBlackBold20,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(
                            color: AppColors.yellow, width: 2)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(color: AppColors.grey)),
                  ),
                  // validator: _validatePhone,
                  // validator: (value) {
                  // if (value == null || value.isEmpty) {
                  //   Fluttertoast.showToast(msg: 'Enter your Email');
                  // }
                  // if (RegExp(r"^[0-9]{10}$").hasMatch(value!)) {
                  //   Fluttertoast.showToast(
                  //       msg: "Enter valid Phone number");
                  // }
                  // return null;
                  // },
                ),
                const SizedBox(height: 15),
                const Text("Email", style: AppTextStyles.poppinsBlackBold20),
                const SizedBox(height: 15),
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
                  // if (value == null || value.isEmpty) {
                  //   Fluttertoast.showToast(msg: 'Enter your Email');
                  // }
                  // if (_regexEmail.hasMatch(value!)) {
                  //   Fluttertoast.showToast(
                  //       msg: "Please enter valid Email address");
                  // }
                  // return null;
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
