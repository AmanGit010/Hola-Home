import 'package:flutter/material.dart';
import 'package:rating_summary/rating_summary.dart';

import '../../../core/constants/styles.dart';
import '../widgets/reviews_widget.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reviews",
            style: AppTextStyles.poppinsBlackBold20.copyWith(fontSize: 25)),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26, vertical: 5),
              child: RatingSummary(
                  average: 4.5,
                  counter: 5,
                  counterFiveStars: 5,
                  counterFourStars: 4,
                  counterThreeStars: 3,
                  counterTwoStars: 2,
                  counterOneStars: 1),
            ),
            const SizedBox(height: 30),
            const Text("All Reviews", style: AppTextStyles.poppinsBlackBold30),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: SizedBox(
                // color: Colors.red,
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                    shrinkWrap: true,
                    // scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ReviewsWidget();
                    }),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
