import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hola_home/core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';
import 'package:hola_home/feature/language_selection_screen/language_selection_screen.dart';

class QnAScreen extends StatefulWidget {
  QnAScreen({Key? key}) : super(key: key);

  @override
  State<QnAScreen> createState() => _QnAScreenState();
}

class _QnAScreenState extends State<QnAScreen> {
  final _formKey = GlobalKey<FormState>();
  final RegExp _regexEmail = RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]");

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  // String _checkEmailInput() {
  //   if (_emailController.text.isEmpty) {
  //     Fluttertoast.showToast(
  //       msg: "Please enter your email address.",
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.BOTTOM,
  //     );
  //   } else {
  //     // Enable the button to move to the next screen
  //     setState(() {
  //       _isButtonDisabled = false;
  //     });

  //     // You can perform any other validation on the email here
  //     // For example, check if the email is in a valid format.
  //   }
  //   return "no";
  // }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      Fluttertoast.showToast(
          msg: 'Enter your Name', backgroundColor: Colors.red);
    }
    // if (value == !_regexEmail.hasMatch(value!)) {
    //   Fluttertoast.showToast(msg: 'Please enter a valid Email address');
    // }
    return '';
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      Fluttertoast.showToast(
          msg: 'Enter your Email', backgroundColor: Colors.red);
    }
    return '';
  }

  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      Fluttertoast.showToast(
          msg: 'Enter your Phone number', backgroundColor: Colors.red);
    }
    return '';
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
              color: AppColors.black,
            )),
        title: Text(
          "Fill Your Profile",
          style: AppTextStyles.poppinsBlackBold20.copyWith(fontSize: 25),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 30),
              const ProfilePic(),
              const SizedBox(height: 46),
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
                        validator: _validateName,
                      ),
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
                              borderSide:
                                  const BorderSide(color: AppColors.grey)),
                        ),
                        validator: _validateEmail,
                      ),
                      const SizedBox(height: 25),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _phoneController,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          fillColor: AppColors.fillColorTFF,
                          filled: true,
                          prefixIcon: const CountryCodePicker(),
                          labelText: 'Phone Number',
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
                        validator: _validatePhone,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 270),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LanguageSelectionScreen()));
                    }
                  },

                  // onTap: () {
                  //   if (_formKey.currentState!.validate()) {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) =>
                  //               const LanguageSelectionScreen()),
                  //     );
                  //   } else {
                  //     Fluttertoast.showToast(
                  //         msg: 'Please fill in all required fields.');
                  //   }
                  // },
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      alignment: Alignment.center,
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.yellow, width: 2.0),
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
              ),
              const SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfilePic extends StatefulWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: 50,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color:
                  AppColors.yellow, // Change the color as per your preference
            ),
            child: GestureDetector(
              onTap: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoActionSheet(
                      title: const Text('Select Profile Picture'),
                      actions: [
                        CupertinoActionSheetAction(
                          onPressed: () {
                            // Do something when the first option is pressed
                            Navigator.pop(context); // Close the modal popup
                          },
                          child: const Text('Open Photos'),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {
                            // Do something when the second option is pressed
                            Navigator.pop(context); // Close the modal popup
                          },
                          child: const Text('Take Picture'),
                        ),
                      ],
                      cancelButton: CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.pop(context); // Close the modal popup
                        },
                        child: const Text('Cancel'),
                      ),
                    );
                  },
                );
              },
              child: const Icon(
                Icons.add,
                color: AppColors.white, // Change the plus sign color if needed
                size: 24,
                // Adjust the size as per your requirement
              ),
            ),
          ),
        ),
      ],
    );
  }
}
