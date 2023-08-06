import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../store/home_store.dart';
import '../widgets/quantity.dart';
import 'home_screen.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    final homeStore = Provider.of<HomeStore>(context)..incre();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Availability",
            style: AppTextStyles.poppinsBlackBold20.copyWith(fontSize: 25)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            const Text("Date", style: AppTextStyles.poppinsBlackBold20),
            const SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.calendar_month_outlined,
                    color: AppColors.grey),
                fillColor: AppColors.fillColorTFF,
                filled: true,
                labelText: 'Select Dates',
                labelStyle: AppTextStyles.poppinsBlackBold20
                    .copyWith(color: AppColors.grey),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide:
                        const BorderSide(color: AppColors.yellow, width: 2)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: const BorderSide(color: AppColors.grey)),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Timings", style: AppTextStyles.poppinsBlackBold20),
            const SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.grey,
                ),
                fillColor: AppColors.fillColorTFF,
                filled: true,
                labelText: 'Select Timings',
                labelStyle: AppTextStyles.poppinsBlackBold20
                    .copyWith(color: AppColors.grey),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide:
                        const BorderSide(color: AppColors.yellow, width: 2)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: const BorderSide(color: AppColors.grey)),
              ),
            ),
            const SizedBox(height: 20),
            const Text("No of Guests", style: AppTextStyles.poppinsBlackBold20),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Adults", style: AppTextStyles.poppinsBlackBold20),
                Text("Children", style: AppTextStyles.poppinsBlackBold20),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Quantity(),
                Quantity(),
              ],
            ),
            const SizedBox(height: 330),
            Padding(
              padding: const EdgeInsets.only(left: 270),
              child: GestureDetector(
                onTap: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const ()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.yellow, width: 2),
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.yellow,
                  ),
                  child: const Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.poppinsBlackBold20,
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
