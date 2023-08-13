import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';
import 'contact_us_screen.dart';
import 'help_screen.dart';
import 'language_screen.dart';
import 'permissions_screen.dart';
import 'privacy_policy_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
        title: 'Settings',
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PermissionsScreen()));
            },
            child: _ActionTile(
              text: 'Permissions',
              callTo: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PermissionsScreen()));
              },
            ),
          ),
          const SizedBox(height: 30),
          _ActionTile(
            text: 'Languages',
            callTo: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LanguageScreen()));
            },
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ContactUsScreen()));
            },
            child: _ActionTile(
              text: 'Contact Us',
              callTo: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactUsScreen()));
              },
            ),
          ),
          const SizedBox(height: 30),
          _ActionTile(
            text: 'Report a Bug',
            callTo: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const ()));
            },
          ),
          const SizedBox(height: 30),
          _ActionTile(
            text: 'Privacy Policy',
            callTo: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyScreen()));
            },
          ),
          const SizedBox(height: 30),
          _ActionTile(
            text: 'Help',
            callTo: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HelpScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class _ActionTile extends StatelessWidget {
  const _ActionTile({required this.text, required this.callTo, Key? key})
      : super(key: key);

  final String text;
  final VoidCallback callTo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: AppTextStyles.poppinsBlack20),
          const Icon(
            Icons.arrow_forward_ios,
            color: AppColors.yellow,
          )
        ],
      ),
    );
  }
}
