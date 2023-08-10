import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';
import 'payment_method_screen.dart';

class ConfirmAndPayScreen extends StatelessWidget {
  const ConfirmAndPayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Confirm and pay',
        actions: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text("Cancel", style: AppTextStyles.poppinsBlack20),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset('assets/png/property/confirm_and_pay.png'),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Entire Villa",
                          style: AppTextStyles.poppinsBlack20
                              .copyWith(color: AppColors.grey),
                        ),
                        const SizedBox(height: 2),
                        const Text("The Astin Villa Hotel",
                            style: AppTextStyles.poppinsBlackBold20),
                        const SizedBox(height: 2),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Icon(Icons.star, color: AppColors.yellow),
                            Text("5.0",
                                style: AppTextStyles.poppinsBlack10
                                    .copyWith(fontSize: 15)),
                            Text("(22 reviews)",
                                style: AppTextStyles.poppinsBlack10
                                    .copyWith(fontSize: 15)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your Booking", style: AppTextStyles.poppinsBlackBold20),
                  SizedBox(height: 20),
                  Text("Dates", style: AppTextStyles.poppinsBlackBold20),
                  SizedBox(height: 3),
                  Text("17 Nov - 19 Nov", style: AppTextStyles.poppinsBlack20),
                  SizedBox(height: 20),
                  Text("Guests", style: AppTextStyles.poppinsBlackBold20),
                  SizedBox(height: 3),
                  Text("2 guests", style: AppTextStyles.poppinsBlack20),
                  SizedBox(height: 20),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text("Price Details",
                      style: AppTextStyles.poppinsBlackBold20),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r"$209 X 2 Nights",
                          style: AppTextStyles.poppinsBlack20
                              .copyWith(color: AppColors.lightBlack)),
                      Text(r"$ 418.00",
                          style: AppTextStyles.poppinsBlack20
                              .copyWith(color: AppColors.lightBlack))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Service fees",
                          style: AppTextStyles.poppinsBlack20
                              .copyWith(color: AppColors.lightBlack)),
                      Text(r"$ 40.00",
                          style: AppTextStyles.poppinsBlack20
                              .copyWith(color: AppColors.lightBlack))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Taxes",
                          style: AppTextStyles.poppinsBlack20
                              .copyWith(color: AppColors.lightBlack)),
                      Text(r"$ 10.00",
                          style: AppTextStyles.poppinsBlack20
                              .copyWith(color: AppColors.lightBlack))
                    ],
                  ),
                  const Divider(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total", style: AppTextStyles.poppinsBlackBold20),
                      Text(r"$ 886.00", style: AppTextStyles.poppinsBlackBold20)
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text("Cancellation Policy",
                      style: AppTextStyles.poppinsBlackBold20),
                  const SizedBox(height: 15),
                  Text(
                      "Free cancellation for 48 hours.\nReview the Hosts full cancellation policy which applies even if you cancel for illness or disruptions caused by COVID-19.",
                      style: AppTextStyles.poppinsBlack15
                          .copyWith(color: AppColors.lightBlack)),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                      "By clicking the 'Confirm and pay' button, you are agreeing to our terms and condition, privacy policy and to receive booking related details. Standard payments rates may apply.",
                      style: AppTextStyles.poppinsBlack15
                          .copyWith(color: AppColors.lightBlack)),
                  const SizedBox(height: 50),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentMethodScreen())),
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
                  child: const Center(
                    child: Text(
                      'Confirm and Pay',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.poppinsBlackBold20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
