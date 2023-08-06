import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.amber,
          boxShadow: [
            BoxShadow(
                offset: const Offset(4, 4),
                blurRadius: 16,
                color: const Color(0x1212120f).withOpacity(0.09))
          ],
          // color: AppColors.yellow,
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        child: CircleAvatar(
                          radius: 27,
                          foregroundImage:
                              AssetImage('assets/png/profile_pic.png'),
                        )),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Ivande Othawa\n',
                              style: AppTextStyles.poppinsBlackBold10
                                  .copyWith(fontSize: 15)),
                          TextSpan(
                              text: 'Jan 20, 2025',
                              style: AppTextStyles.poppinsBlack10.copyWith(
                                  fontSize: 15, color: AppColors.grey))
                        ]),
                      ),
                      const SizedBox(width: 30),
                    ],
                  ),
                  const SizedBox(width: 65),
                  Container(
                      decoration: BoxDecoration(
                          color: AppColors.yellow,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            const Icon(Icons.star, color: Colors.black),
                            Text(
                              " 5.0",
                              style: AppTextStyles.poppinsBlack10
                                  .copyWith(fontSize: 15),
                            )
                          ],
                        ),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "Very nice and comfortable hotel, thank you for accompanying my vacation!",
                  style: AppTextStyles.poppinsBlack10.copyWith(fontSize: 15),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
