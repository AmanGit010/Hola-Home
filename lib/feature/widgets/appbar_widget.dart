import 'package:flutter/material.dart';

import '../../core/constants/styles.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    required this.title,
    Key? key,
    this.actions = const [],
    this.leading,
  }) : super(key: key);
  final Widget? leading;
  final String title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: Text(title, style: AppTextStyles.poppinsBlackBold25),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
