import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';
import '../../payment/screens/confirm_and_pay_screen.dart';
import '../../widgets/appbar_widget.dart';
import '../store/home_store.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Reservation Details',
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
    // final designationTitles = ["Mr", "Mrs", "Ms"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // for (final i in designationTitles)
        //   GestureDetector(
        //     onTap: () {
        //       homeStore.selected = i;
        //     },
        //     child: Container(
        //       padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 5),
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(20),
        //           color: homeStore.selected ==i?AppColors.yellow:AppColors.lightYellow,
        //           border: Border.all(color: AppColors.yellow)),
        //       child:  Text("${i}.", style: AppTextStyles.poppinsBlack20),
        //     ),
        //   )
        Observer(builder: (_) {
          if (homeStore.selected == false) {
            // return DesignationTile(des: 'Mrs.');
            return GestureDetector(
              onTap: () {
                homeStore.isSelected(!homeStore.selected);
              },
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
              onTap: () {
                // homeStore.selected = i;
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 44, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: homeStore.selected == i
                    //     ? AppColors.yellow
                    //     : AppColors.lightYellow,
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
              onTap: () {
                homeStore.isSelected(!homeStore.selected);
              },
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
              onTap: () {
                homeStore.isSelected(!homeStore.selected);
              },
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
              onTap: () {
                homeStore.isSelected(!homeStore.selected);
              },
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
              onTap: () {
                homeStore.isSelected(!homeStore.selected);
              },
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
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(200),
                  lastDate: DateTime(2026));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
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
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
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
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ConfirmAndPayScreen()));
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
