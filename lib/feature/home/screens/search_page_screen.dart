import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import 'search_result_screen.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.black,
            )),
        title: Text(
          "Search",
          style: AppTextStyles.poppinsBlackBold20.copyWith(fontSize: 25),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: TextFormField(
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search_rounded,
                        color: AppColors.grey,
                      ),
                      labelText: 'Where to?',
                      labelStyle: AppTextStyles.poppinsBlack20
                          .copyWith(color: AppColors.grey),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: const BorderSide(
                              color: AppColors.yellow, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: const BorderSide(color: AppColors.grey)),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.only(left: 21, top: 10),
                  child: Text(
                    "Recent Searches",
                    style: AppTextStyles.poppinsBlackBold20,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 21),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/svg/recent_search.svg'),
                      const SizedBox(width: 15),
                      const Text("Auckland, New Zealand",
                          style: AppTextStyles.poppinsBlack20)
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 21),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/svg/recent_search.svg'),
                      const SizedBox(width: 15),
                      const Text("Ontario, Canada",
                          style: AppTextStyles.poppinsBlack20)
                    ],
                  ),
                ),
                const SizedBox(height: 500),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchResult()),
                      );
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
                        color: AppColors.yellow,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Search",
                            textAlign: TextAlign.center,
                            style: AppTextStyles.poppinsBlackBold20),
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
  }
}
