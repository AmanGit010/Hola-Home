import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hola_home/core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';

class PopularProp extends StatelessWidget {
  const PopularProp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Nearby Properties",
          style: AppTextStyles.poppinsBlackBold20.copyWith(fontSize: 25),
        ),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "5 properties",
                style: AppTextStyles.poppinsBlack10.copyWith(fontSize: 15),
              ),
            ),
            const SizedBox(height: 20),
            const _PropContainer(),
            const SizedBox(height: 20),
            const _PropContainer(),
            const SizedBox(height: 20),
            const _PropContainer(),
            const SizedBox(height: 20),
            const _PropContainer(),
            const SizedBox(height: 20),
            const _PropContainer(),
            const SizedBox(height: 40),
          ],
        ),
      ]),
    );
  }
}

class _PropContainer extends StatelessWidget {
  const _PropContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 380,
        decoration: BoxDecoration(
          // color: Colors.amber,
          boxShadow: [
            BoxShadow(
                offset: const Offset(4, 4),
                blurRadius: 16,
                color: const Color(0x1212120f).withOpacity(0.06))
          ],
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(alignment: Alignment.topRight, children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.asset(
                    'assets/png/popular_property_all.png',
                    // fit: BoxFit.,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 15),
                child: GestureDetector(
                  // onTap: () => ,
                  child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: SvgPicture.asset('assets/svg/bookmark_icon.svg'),
                      )),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.star, color: AppColors.yellow),
                      const SizedBox(width: 5),
                      const Text(
                        " 5.0",
                        style: AppTextStyles.poppinsBlackBold20,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "(22 reviews)",
                        style: AppTextStyles.poppinsBlack10
                            .copyWith(color: AppColors.grey, fontSize: 15),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Private Host",
                        style: AppTextStyles.poppinsBlack10
                            .copyWith(color: AppColors.grey, fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "The Villa by Bay",
                    style: AppTextStyles.poppinsBlackBold20,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Alice Springs NT 0220, Australia",
                    style: AppTextStyles.latoBlack20
                        .copyWith(color: AppColors.grey),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text(
                        "\$ 3,700",
                        style: AppTextStyles.poppinsBlackBold20,
                      ),
                      Text(
                        " / night",
                        style: AppTextStyles.poppinsBlack20
                            .copyWith(color: AppColors.grey),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}