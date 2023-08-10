import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';
import 'payment_successful_screen.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  final bool _isChecked = false;
  // final LanguageStore _languageStore = LanguageStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Confirm and Pay',
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Text("Cancel", style: AppTextStyles.poppinsBlack20),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Payment Methods",
                  style: AppTextStyles.poppinsBlackBold20),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
              decoration: const BoxDecoration(color: AppColors.lightYellow),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.yellow)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/png/payment/DPO_PAY.png'),
                        const SizedBox(width: 20),
                        const Text("DPO PAY",
                            style: AppTextStyles.poppinsBlackBold20),
                      ],
                    ),
                    Checkbox(
                      value: _isChecked,
                      shape: const CircleBorder(eccentricity: 1),
                      onChanged: (value) => null,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 510),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentSuccessfulScreen())),
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
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 46),
                    child: Text(
                      'Continue',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.poppinsBlackBold20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
