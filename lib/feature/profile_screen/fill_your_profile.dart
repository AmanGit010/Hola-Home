import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hola_home/core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';
import 'package:hola_home/feature/language_selection_screen/language_selection_screen.dart';

class FillYourProfile extends StatefulWidget {
  const FillYourProfile({Key? key}) : super(key: key);

  @override
  State<FillYourProfile> createState() => _FillYourProfileState();
}

class _FillYourProfileState extends State<FillYourProfile> {
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
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
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
                        borderSide: const BorderSide(color: AppColors.grey)),
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 31),
                child: TextFormField(
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
                        borderSide: const BorderSide(color: AppColors.grey)),
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 31),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    fillColor: AppColors.fillColorTFF,
                    filled: true,
                    prefixIcon: const CountryCodePicker(),
                    labelText: 'Mobile Number',
                    labelStyle: AppTextStyles.poppinsBlackBold20,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(
                            color: AppColors.yellow, width: 2)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(color: AppColors.grey)),
                  ),
                ),
              ),
              const SizedBox(height: 310),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const LanguageSelectionScreen()));
                  },
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
