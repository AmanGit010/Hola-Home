import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';
import 'home_screen.dart';

class BookingCompletionScreen extends StatelessWidget {
  const BookingCompletionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Booking',
      ),
      body: Column(
        children: [
          const Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:
                    SvgPicture.asset('assets/svg/booking/booking_skeleton.svg'),
              ),
              Column(
                children: [
                  // const SizedBox(height: 25),
                  const Text("The Astin Villa Hotel",
                      style: AppTextStyles.poppinsBlackBold20),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        'assets/png/property/property_desc.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 55, right: 55, top: 80),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Name",
                              style: AppTextStyles.poppinsBlack20
                                  .copyWith(color: AppColors.lightBlack),
                            ),
                            Text("Phone number",
                                style: AppTextStyles.poppinsBlack20
                                    .copyWith(color: AppColors.lightBlack)),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("John may",
                                style: AppTextStyles.poppinsBlackBold20),
                            Text("+234 2324 5653",
                                style: AppTextStyles.poppinsBlackBold20),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Check in",
                              style: AppTextStyles.poppinsBlack20
                                  .copyWith(color: AppColors.lightBlack),
                            ),
                            Text("Check out",
                                style: AppTextStyles.poppinsBlack20
                                    .copyWith(color: AppColors.lightBlack)),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Nov 17, 2023",
                                style: AppTextStyles.poppinsBlackBold20),
                            Text("Nov 19, 2023",
                                style: AppTextStyles.poppinsBlackBold20),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Guest",
                              style: AppTextStyles.poppinsBlack20
                                  .copyWith(color: AppColors.lightBlack),
                            ),
                            Text("Booking Id",
                                style: AppTextStyles.poppinsBlack20
                                    .copyWith(color: AppColors.lightBlack)),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("2", style: AppTextStyles.poppinsBlackBold20),
                            Text("12HH664839",
                                style: AppTextStyles.poppinsBlackBold20),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 45, left: 32, right: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.25))
                  ],
                  border: Border.all(color: AppColors.yellow, width: 2),
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.yellow,
                ),
                child: Center(
                  child: Text(
                    "Go to Home screen",
                    textAlign: TextAlign.center,
                    style:
                        AppTextStyles.poppinsBlackBold20.copyWith(fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
