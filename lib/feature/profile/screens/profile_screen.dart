import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../settings/screens/settings_screen.dart';
import '../../widgets/appbar_widget.dart';
import '../widgets/landlord_dialog.dart';
import 'profile_information_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Profile',
        center: true,
        leading: Text(''),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //use container for image
          const CircleAvatar(
            backgroundColor: AppColors.yellow,
            foregroundImage: AssetImage('assets/png/app/pic.png'),
            radius: 60,
          ),
          const SizedBox(height: 15),
          const Text("Emma Jane", style: AppTextStyles.poppinsBlackBold20),
          const SizedBox(height: 35),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileInformationScreen()));
            },
            child: const _ActionTile(
              icon: 'assets/svg/profile_icons/user_icon.svg',
              text: 'Personal Information',
            ),
          ),
          const SizedBox(height: 35),
          GestureDetector(
            onTap: () {},
            child: const _ActionTile(
              icon: 'assets/svg/profile_icons/manage_icon.svg',
              text: 'Manage Property',
            ),
          ),
          const SizedBox(height: 35),
          GestureDetector(
            onTap: () {},
            child: const _ActionTile(
              // call: () async{},
              icon: 'assets/svg/profile_icons/payout_icon.svg',
              text: 'Payouts',
            ),
          ),
          const SizedBox(height: 35),
          GestureDetector(
            onTap: () {},
            child: const _ActionTile(
              icon: 'assets/svg/profile_icons/language_icon.svg',
              text: 'Languages',
            ),
          ),
          const SizedBox(height: 35),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
            },
            child: const _ActionTile(
              icon: 'assets/svg/profile_icons/settings_icon.svg',
              text: 'Settings',
            ),
          ),
          const SizedBox(height: 35),
          GestureDetector(
            onTap: () {},
            child: const _ActionTile(
              icon: 'assets/svg/profile_icons/delete_icon.svg',
              text: 'Delete Account',
            ),
          ),
          const SizedBox(height: 35),
          GestureDetector(
            onTap: () {},
            child: const _ActionTile(
              icon: 'assets/svg/profile_icons/logout_icon.svg',
              text: 'Logout',
            ),
          ),
          const SizedBox(height: 31),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 36),
            decoration: const BoxDecoration(
              color: Color(0xffF7F8FA),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/png/profile/landlord.png'),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Become A Landlord",
                        style: AppTextStyles.poppinsBlackBold20),
                    const SizedBox(height: 5),
                    const Text(
                        "Become a landlord and list your properties on\nHola Homes to earn additional money",
                        style: AppTextStyles.poppinsBlack15),
                    const SizedBox(height: 25),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const LandlordDialog();
                            });
                      },
                      child: Container(
                        height: 55,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 16),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 4),
                                blurRadius: 5,
                                color: Colors.black.withOpacity(0.25))
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.yellow,
                        ),
                        child: Center(
                          child: Text(
                            'BECOME A LANDLORD',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.poppinsBlackBold15
                                .copyWith(color: AppColors.lightBlack),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionTile extends StatelessWidget {
  const _ActionTile({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  final String icon;
  final String text;
  // final VoidCallback call;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(width: 17),
              Text(text, style: AppTextStyles.poppinsBlack20),
            ],
          ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}

//move to widgets folder
