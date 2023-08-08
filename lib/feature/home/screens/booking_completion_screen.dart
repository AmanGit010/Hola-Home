import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/styles.dart';

class BookingCompletionScreen extends StatelessWidget {
  const BookingCompletionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text("Booking", style: AppTextStyles.poppinsBlackBold25),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: SvgPicture.asset('assets/svg/booking_skeleton.svg'),
          ),
          Container(
            child: Column(
              children: [
                const SizedBox(height: 70),
                const Text("The Astin Villa Hotel",
                    style: AppTextStyles.poppinsBlackBold20),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      'assets/png/property_desc.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
