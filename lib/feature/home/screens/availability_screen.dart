import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';
import '../store/home_store.dart';
import '../widgets/quantity.dart';
import 'reservation_screen.dart';

class AvailabilityScreen extends StatefulWidget {
  const AvailabilityScreen({Key? key}) : super(key: key);

  @override
  State<AvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<AvailabilityScreen> {
  final HomeStore homeStore = HomeStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarWidget(
        title: 'Availability',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              const Text("Date", style: AppTextStyles.poppinsBlackBold20),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(200),
                      lastDate: DateTime(2026));

                  // showCalendarDatePicker2Dialog(
                  //   dialogBackgroundColor: Colors.white,
                  //   context: context,
                  //   dialogSize: const Size(350, 400),
                  //   config: CalendarDatePicker2WithActionButtonsConfig(
                  //       calendarType: CalendarDatePicker2Type.range,
                  //       selectedDayHighlightColor: AppColors.yellow,
                  //       selectedRangeHighlightColor: const Color(0xfff7f7f7),
                  //       selectedDayTextStyle:
                  //           AppTextStyles.poppinsBlack20.copyWith(fontSize: 15),
                  //       disabledDayTextStyle:
                  //           AppTextStyles.poppinsBlack20.copyWith(fontSize: 15),
                  //       okButtonTextStyle:
                  //           AppTextStyles.poppinsBlack10.copyWith(fontSize: 15),
                  //       cancelButtonTextStyle: AppTextStyles.poppinsBlack10
                  //           .copyWith(fontSize: 15)),
                  //   value: [DateTime.now()],
                  // );
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: AppColors.fillColorTFF,
                      border: Border.all(color: AppColors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Select Dates',
                          style: AppTextStyles.poppinsBlackBold20
                              .copyWith(color: AppColors.grey),
                        ),
                        const Icon(Icons.calendar_month_outlined,
                            color: AppColors.grey),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Timings", style: AppTextStyles.poppinsBlackBold20),
              const SizedBox(height: 10),
              GestureDetector(
                // onTap: ,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: AppColors.fillColorTFF,
                      border: Border.all(color: AppColors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Timings",
                          style: AppTextStyles.poppinsBlackBold20
                              .copyWith(color: AppColors.grey),
                        ),
                        const Icon(Icons.keyboard_arrow_down_rounded,
                            color: AppColors.grey),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("No of Guests",
                  style: AppTextStyles.poppinsBlackBold20),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Adults", style: AppTextStyles.poppinsBlackBold20),
                  Text("Children", style: AppTextStyles.poppinsBlackBold20),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Quantity(), Quantity()],
              ),
              const SizedBox(height: 330),
              Padding(
                padding: const EdgeInsets.only(left: 270),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReservationScreen()));
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
      ),
    );
  }
}
