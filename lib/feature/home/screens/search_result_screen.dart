import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../widgets/appbar_widget.dart';
import '../store/home_store.dart';
import '../widgets/filter_container.dart';
import 'property_desc_screen.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Search Result',
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 19),
            child: FilterWidget(),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return _Result();
                      }),
                )
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
    final HomeStore homeStore = HomeStore();
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PropertyDesc())),
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
                          'assets/png/property/nearby_prop.png',
                          // fit: BoxFit.,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 15),
                      child: GestureDetector(
                        onTap: () => homeStore.setFilled(!homeStore.bookmarked),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Observer(
                              builder: (context) {
                                return homeStore.bookmarked
                                    ? const Icon(Icons.bookmark_rounded)
                                    //  SvgPicture.asset(
                                    //     'assets/svg/bookmark_filled_icon.svg')
                                    : const Icon(Icons.bookmark_border_rounded);
                                //  SvgPicture.asset(
                                //     'assets/svg/bookmark_icon.svg');
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
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
                              style: AppTextStyles.poppinsBlack10.copyWith(
                                  color: AppColors.grey, fontSize: 15),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Private Host",
                              style: AppTextStyles.poppinsBlack10.copyWith(
                                  color: AppColors.grey, fontSize: 15),
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
  }
}
