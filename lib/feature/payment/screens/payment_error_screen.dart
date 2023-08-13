import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';

class PaymentErrorScreen extends StatelessWidget {
  const PaymentErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Image.asset('assets/png/payment/payment_error.png'),
          const SizedBox(height: 30),
          const Text("Payment failed!",
              style: AppTextStyles.poppinsBlackBold20),
          const SizedBox(height: 15),
          Text(
              "The payment was unsuccessful due\nto abnormality. Please try again or\nuse other payment method",
              textAlign: TextAlign.center,
              style:
                  AppTextStyles.poppinsBlack20.copyWith(color: AppColors.grey)),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.25))
                  ],
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.yellow,
                ),
                child: const Center(
                  child: Text(
                    'Retry',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.poppinsBlackBold20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
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
                  color: AppColors.lightYellow,
                ),
                child: const Center(
                  child: Text(
                    'Cancel',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.poppinsBlackBold20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 53),
        ],
      ),
    );
  }
}
