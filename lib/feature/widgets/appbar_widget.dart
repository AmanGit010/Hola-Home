import 'package:flutter/material.dart';

import '../../core/constants/styles.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    required this.title,
    Key? key,
    this.actions = const [],
    this.leading,
    this.center,
  }) : super(key: key);
  final Widget? leading;
  final String title;
  final List<Widget> actions;
  final bool? center;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      centerTitle: center,
      title: Text(title, style: AppTextStyles.poppinsBlackBold25),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
