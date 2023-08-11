import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';
import 'help_screen.dart';
import 'language_screen.dart';
import 'permissions_screen.dart';
import 'privacy_policy_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Settings',
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PermissionsScreen())),
            child: const _ActionTile(text: 'Permissions'),
          ),
          const SizedBox(height: 30),
          GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LanguageScreen())),
              child: const _ActionTile(text: 'Languages')),
          const SizedBox(height: 30),
          GestureDetector(
              onTap: () {}, child: const _ActionTile(text: 'Contact Us')),
          const SizedBox(height: 30),
          GestureDetector(
              onTap: () {}, child: const _ActionTile(text: 'Report a Bug')),
          const SizedBox(height: 30),
          GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyScreen())),
              child: const _ActionTile(text: 'Privacy Policy')),
          const SizedBox(height: 30),
          GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HelpScreen())),
              child: const _ActionTile(text: 'Help')),
        ],
      ),
    );
  }
}

class _ActionTile extends StatelessWidget {
  const _ActionTile({required this.text, Key? key}) : super(key: key);

  final String text;

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
