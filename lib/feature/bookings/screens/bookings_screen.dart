import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../home/screens/home_screen.dart';
import '../../home/screens/nearby_properties_screen.dart';
import '../../home/screens/popular_properties_screen.dart';
import '../../home/widgets/filter_container.dart';
import '../../widgets/appbar_widget.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarWidget(
        title: 'Bookings',
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: FilterWidget(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: ListView.builder(
                  itemCount: 5,
                  // shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const _BookingTile();
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class _BookingTile extends StatelessWidget {
  const _BookingTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: ListView.builder(
          itemCount: 5,
          // shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 21),
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
                          ],
                        ),
                        const SizedBox(width: 20),
                        const Text(r"$886",
                            style: AppTextStyles.poppinsBlackBold20),
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
                                    builder: (context) => HomeScreen()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 7),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.yellow, width: 2),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: AppColors.yellow, width: 2),
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
          }),
    );
  }
}
