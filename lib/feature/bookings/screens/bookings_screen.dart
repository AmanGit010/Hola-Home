import 'package:flutter/material.dart';
import '../../home/widgets/filter_container.dart';
import '../../widgets/appbar_widget.dart';
import '../widgets/booking_tile.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWidget(
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
            SizedBox(height: 20),
            BookingTile(isUpcoming: true),
            SizedBox(height: 20),
            BookingTile(isUpcoming: false),
            // SizedBox(
            //   height: MediaQuery.sizeOf(context).height,
            //   child: ListView.builder(
            //       itemCount: 5,
            //       // shrinkWrap: true,
            //       itemBuilder: (context, index) {
            //         return const _BookingTile();
            //       }),
            // )
          ],
        ),
      ),
    );
  }
}
