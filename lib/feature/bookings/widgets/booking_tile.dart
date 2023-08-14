import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../home/screens/home_screen.dart';

class BookingTile extends StatelessWidget {
  const BookingTile({required this.isUpcoming, Key? key}) : super(key: key);

  final bool isUpcoming;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 21),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/png/bookings/booking.png'),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Tree House Bali",
                        style: AppTextStyles.poppinsBlackBold20),
                    Text("Ubud, Bali",
                        style: AppTextStyles.poppinsBlack20
                            .copyWith(color: AppColors.grey)),
                    const SizedBox(height: 10),
                    if (isUpcoming)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 3),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.purple),
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.lightPurple),
                        child: const Text("Upcoming Booking",
                            style: AppTextStyles.poppinsBlack15),
                      )
                    else
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 3),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.green),
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.lightGreen),
                        child: const Text("Active Booking",
                            style: AppTextStyles.poppinsBlack15),
                      ),
                  ],
                ),
                const SizedBox(width: 20),
                const Text(r"$886", style: AppTextStyles.poppinsBlackBold20),
              ],
            ),
            const SizedBox(height: 15),
            const Divider(),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.yellow, width: 2),
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.lightYellow),
                    child: Center(
                      child: Text(
                        "Cancel Booking",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.poppinsBlackBold20
                            .copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.yellow, width: 2),
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.yellow,
                    ),
                    child: Center(
                      child: Text(
                        "View Details",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.poppinsBlackBold20
                            .copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
