import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Confirm and pay",
            style: AppTextStyles.poppinsBlackBold25),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Text("Cancel", style: AppTextStyles.poppinsBlack15),
            ),
          )
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
                  children: [
                    Image.asset('assets/png/DPO_PAY.png'),
                    const Text("DPO PAY",
                        style: AppTextStyles.poppinsBlackBold20),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: RadioListTile(
                    //     title: Text('Option 1'),
                    //     value: 1,
                    //     groupValue: _selectedValue,
                    //     onChanged: (value) {
                    //       setState(() {
                    //         _selectedValue = value as int?;
                    //       });
                    //     },
                    //   ),
                    // ),
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
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 46),
                    child: Text(
                      'Confirm and Pay',
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
