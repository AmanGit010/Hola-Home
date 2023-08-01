import 'package:flutter/material.dart';
import 'package:hola_home/core/constants/styles.dart';

class PropertyDesc extends StatelessWidget {
  const PropertyDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset('assets/png/property_desc.png'),
            const Text(
              "The Astin Villa Hotel",
              style: AppTextStyles.poppinsBlackBold30,
            )
          ],
        ),
      ),
    );
  }
}
