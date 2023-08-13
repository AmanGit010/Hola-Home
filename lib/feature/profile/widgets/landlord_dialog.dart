import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';

class LandlordDialog extends StatelessWidget {
  const LandlordDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/png/profile/landlord.png'),
            const SizedBox(height: 15),
            Text(
              "Congratulations!!\nYou're a landlord now",
              textAlign: TextAlign.center,
              style: AppTextStyles.poppinsBlackBold25
                  .copyWith(color: AppColors.yellow),
            ),
            const SizedBox(height: 15),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: AppTextStyles.poppinsBlack15,
                children: [
                  TextSpan(
                      text:
                          'List your properties on Hola Homes\nto earn additional money by\nclicking on '),
                  TextSpan(
                      text: '"Manage Property"',
                      style: AppTextStyles.poppinsBlackBold15)
                ],
              ),
            ),
            const SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
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
                  child: Center(
                    child: Text(
                      'OK',
                      style: AppTextStyles.poppinsBlackBold15
                          .copyWith(color: AppColors.lightBlack),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
