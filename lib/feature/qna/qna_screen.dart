import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/styles.dart';
import '../language_selection/screens/language_selection_screen.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/profile_pic.dart';

class QnAScreen extends StatefulWidget {
  const QnAScreen({Key? key}) : super(key: key);

  @override
  State<QnAScreen> createState() => _QnAScreenState();
}

class _QnAScreenState extends State<QnAScreen> {
  final _formKey = GlobalKey<FormState>();
  final RegExp _regexEmail = RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]");

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        title: 'Fill Your Profile',
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          ProfilePic(
              image: Image.asset('assets/png/app/pic.png'),
              icon: const Icon(Icons.add)),
          const SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: _nameController,
                      decoration: InputDecoration(
                        fillColor: AppColors.fillColorTFF,
                        filled: true,
                        labelText: 'Name',
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
                        if (value == null || value.isEmpty) {
                          Fluttertoast.showToast(msg: 'Enter your name');
                        }
                        return null;
                      }),
                  const SizedBox(height: 25),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
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
                          borderSide: const BorderSide(color: AppColors.grey)),
                    ),
                    // validator: _validateEmail,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        Fluttertoast.showToast(msg: 'Enter your Email');
                      }
                      if (_regexEmail.hasMatch(value!)) {
                        Fluttertoast.showToast(
                            msg: "Please enter valid Email address");
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 25),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _phoneController,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      fillColor: AppColors.fillColorTFF,
                      filled: true,
                      prefixIcon: const CountryCodePicker(
                        initialSelection: '+91',
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        Fluttertoast.showToast(msg: 'Enter your Email');
                      }
                      if (RegExp(r"^[0-9]{10}$").hasMatch(value!)) {
                        Fluttertoast.showToast(msg: "Enter valid Phone number");
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, bottom: 45),
            child: GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LanguageSelectionScreen()));
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.25))
                  ],
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.yellow,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 46),
                  child: Text(
                    'Create Profile',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.poppinsBlackBold20,
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
