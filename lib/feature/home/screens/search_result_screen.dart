import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import 'property_desc_screen.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Search Result",
          style: AppTextStyles.poppinsBlackBold20.copyWith(fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 19),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset('assets/svg/filter_icon.svg'),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "10 properties",
                    style: AppTextStyles.poppinsBlack10.copyWith(fontSize: 15),
                  ),
                ),
                const SizedBox(height: 20),
                const _Result(),
                // const SizedBox(height: 20),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _Result extends StatelessWidget {
  const _Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.95,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertyDesc())),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
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
                        children: [
                          Stack(alignment: Alignment.topRight, children: [
                            ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                child: Image.asset(
                                  'assets/png/nearby_prop.png',
                                  // fit: BoxFit.,
                                )),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 15),
                              child: GestureDetector(
                                // onTap: () => ,
                                child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                          'assets/svg/bookmark_icon.svg'),
                                    )),
                              ),
                            )
                          ]),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.star,
                                        color: AppColors.yellow),
                                    const SizedBox(width: 5),
                                    const Text(
                                      " 5.0",
                                      style: AppTextStyles.poppinsBlackBold20,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "(22 reviews)",
                                      style: AppTextStyles.poppinsBlack10
                                          .copyWith(
                                              color: AppColors.grey,
                                              fontSize: 15),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "Private Host",
                                      style: AppTextStyles.poppinsBlack10
                                          .copyWith(
                                              color: AppColors.grey,
                                              fontSize: 15),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "The Sphora Villa",
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
                                      r"$ 3,700",
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
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
