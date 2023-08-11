import 'package:flutter/material.dart';

import '../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(title: 'Help'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nSed ut neque libero. Sed volutpat risus id sem convallis, at sagittis urna malesuada. Integer convallis mi sit amet lectus facilisis, id vestibulum nunc viverra. Phasellus eu luctus sem.\n\nNullam lacinia ipsum ac lacus auctor, at euismod justo feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce vehicula mi vel sagittis fermentum. Curabitur malesuada ex vitae nisi posuere, a congue magna gravida.\n\nSed auctor turpis eget vestibulum sagittis. Nulla facilisi. Sed sed placerat est. Phasellus malesuada sagittis velit, at tincidunt leo posuere ac. Mauris sed tincidunt sapien, vel consequat dolor. Nullam dictum consequat orci, a fringilla risus consequat sit amet.\n\nSed auctor turpis eget vestibulum sagittis. Nulla facilisi. Sed sed placerat est. Phasellus malesuada sagittis velit, at tincidunt leo posuere ac. Mauris sed tincidunt sapien, vel consequat dolor. Nullam dictum consequat orci, a fringilla risus consequat sit amet.",
                style: AppTextStyles.poppinsBlack20),
          ],
        ),
      ),
    );
  }
}
