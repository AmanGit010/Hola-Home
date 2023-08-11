import 'package:flutter/material.dart';
import '../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';

class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: 'Permissions'),
      body: Column(
        children: [
          SizedBox(height: 20),
          _ActionTile(text: 'Camera', allowed: false),
          SizedBox(height: 35),
          _ActionTile(text: 'Microphone', allowed: false),
          SizedBox(height: 35),
          _ActionTile(text: 'Location', allowed: false),
          SizedBox(height: 35),
          _ActionTile(text: 'Storage', allowed: true),
          SizedBox(height: 35),
          _ActionTile(text: 'Notifications', allowed: true),
        ],
      ),
    );
  }
}

class _ActionTile extends StatelessWidget {
  const _ActionTile({required this.text, required this.allowed, Key? key})
      : super(key: key);

  final String text;
  final bool allowed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppTextStyles.poppinsBlack20,
          ),
          Icon(allowed ? Icons.cancel_rounded : Icons.check_circle_rounded)
        ],
      ),
    );
  }
}
