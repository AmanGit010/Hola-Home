import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';
import '../store/home_store.dart';
import 'confirm_and_pay_screen.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Reservation Details",
            style: AppTextStyles.poppinsBlackBold20.copyWith(fontSize: 25)),
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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            _Designation(),
            SizedBox(height: 50),
            _Details(),
          ],
        ),
      ),
    );
  }
}

class _Designation extends StatelessWidget {
  const _Designation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeStore homeStore = HomeStore();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Observer(builder: (_) {
          if (homeStore.selected == false) {
            // return DesignationTile(des: 'Mrs.');
            return GestureDetector(
              onTap: () => homeStore.isSelected(!homeStore.selected),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 44, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.yellow,
                ),
                child: const Text("Mr.", style: AppTextStyles.poppinsBlack20),
              ),
            );
          } else {
            return GestureDetector(
              onTap: () => homeStore.isSelected(!homeStore.selected),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 44, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.lightYellow,
                    border: Border.all(color: AppColors.yellow)),
                child: const Text("Mr.", style: AppTextStyles.poppinsBlack20),
              ),
            );
          }
        }),
        Observer(builder: (_) {
          if (homeStore.selected == false) {
            // return DesignationTile(des: 'Mrs.');
            return GestureDetector(
              onTap: () => homeStore.isSelected(!homeStore.selected),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 44, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.yellow,
                ),
                child: const Text("Mrs.", style: AppTextStyles.poppinsBlack20),
              ),
            );
          } else {
            return GestureDetector(
              onTap: () => homeStore.isSelected(!homeStore.selected),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 44, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.lightYellow,
                    border: Border.all(color: AppColors.yellow)),
                child: const Text("Mrs.", style: AppTextStyles.poppinsBlack20),
              ),
            );
          }
        }),
        Observer(builder: (_) {
          if (homeStore.selected == false) {
            // return DesignationTile(des: 'Mrs.');
            return GestureDetector(
              onTap: () => homeStore.isSelected(!homeStore.selected),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 44, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.yellow,
                ),
                child: const Text("Ms.", style: AppTextStyles.poppinsBlack20),
              ),
            );
          } else {
            return GestureDetector(
              onTap: () => homeStore.isSelected(!homeStore.selected),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 44, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.lightYellow,
                    border: Border.all(color: AppColors.yellow)),
                child: const Text("Ms.", style: AppTextStyles.poppinsBlack20),
              ),
            );
          }
        }),
      ],
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31),
      child: Column(
        children: [
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Full name',
              labelStyle:
                  AppTextStyles.poppinsBlack20.copyWith(color: AppColors.grey),
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
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle:
                  AppTextStyles.poppinsBlack20.copyWith(color: AppColors.grey),
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
          GestureDetector(
            onTap: () {
              showCalendarDatePicker2Dialog(
                dialogBackgroundColor: Colors.white,
                context: context,
                dialogSize: const Size(350, 400),
                config: CalendarDatePicker2WithActionButtonsConfig(
                    calendarType: CalendarDatePicker2Type.range,
                    selectedDayHighlightColor: AppColors.yellow,
                    selectedRangeHighlightColor: const Color(0xfff7f7f7),
                    selectedDayTextStyle:
                        AppTextStyles.poppinsBlack20.copyWith(fontSize: 15),
                    disabledDayTextStyle:
                        AppTextStyles.poppinsBlack20.copyWith(fontSize: 15),
                    okButtonTextStyle:
                        AppTextStyles.poppinsBlack10.copyWith(fontSize: 15),
                    cancelButtonTextStyle:
                        AppTextStyles.poppinsBlack10.copyWith(fontSize: 15)),
                value: [DateTime.now()],
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  // color: AppColors.fillColorTFF,
                  border: Border.all(color: AppColors.grey)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date of Birth',
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
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            // controller: _phoneController,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              // fillColor: AppColors.fillColorTFF,
              // filled: true,
              prefixIcon: const CountryCodePicker(
                initialSelection: '+91',
              ),
              labelText: 'Phone Number',
              labelStyle:
                  AppTextStyles.poppinsBlack20.copyWith(color: AppColors.grey),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                  borderSide:
                      const BorderSide(color: AppColors.yellow, width: 2)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13),
                  borderSide: const BorderSide(color: AppColors.grey)),
            ),
            // validator: _validatePhone,
            validator: (value) {
              if (value == null || value.isEmpty) {
                Fluttertoast.showToast(msg: 'Enter your Email');
              }
              if (RegExp(r"^[0-9]{10}$").hasMatch(value!)) {
                Fluttertoast.showToast(msg: "Enter valid Phone number");
              }
              return null;
            },
          ),
          const SizedBox(height: 290),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConfirmAndPayScreen())),
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
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
    );
  }
}
