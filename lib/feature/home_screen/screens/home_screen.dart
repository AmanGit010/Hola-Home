// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hola_home/core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldWhite,
      appBar: AppBar(
        backgroundColor: AppColors.yellow,
        leadingWidth: 0,
        leading: const Text(''),
        title: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/png/home_screen_logo.png'),
              const Text(
                "Map",
                style: AppTextStyles.poppinsBlack20,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(),
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  suffixIcon: SvgPicture.asset('assets/svg/search_icon.svg'),
                  labelText: 'Location',
                  labelStyle: AppTextStyles.poppinsBlack20
                      .copyWith(color: AppColors.grey),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide:
                          const BorderSide(color: AppColors.yellow, width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: const BorderSide(color: AppColors.grey)),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Nearby Properties",
                      style: AppTextStyles.poppinsBlackBold20),
                  Text(
                    "See all",
                    style: AppTextStyles.poppinsBlack10
                        .copyWith(color: AppColors.grey, fontSize: 17),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            const LVCarousel(),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Popular Properties",
                      style: AppTextStyles.poppinsBlackBold20),
                  Text(
                    "See all",
                    style: AppTextStyles.poppinsBlack10
                        .copyWith(color: AppColors.grey, fontSize: 17),
                  )
                ],
              ),
            ),
            // const Column(children: [
            //   Text("Ok working"),
            //   Text("Ok working"),
            //   Text("Ok working"),
            //   Text("Ok working"),
            //   Text("Ok working"),
            //   Text("Ok working"),
            // ]),
          ],
        ),
      ),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BottomNavigationBar(
        backgroundColor: AppColors.scaffoldWhite,
        elevation: 5,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.yellow,
        unselectedItemColor: AppColors.grey,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(color: AppColors.yellow),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/home_icon.svg',
              color: _currentIndex == 0 ? AppColors.yellow : AppColors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/bookmark_icon.svg',
              color: _currentIndex == 1 ? AppColors.yellow : AppColors.grey,
            ),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/bookings_icon.svg',
              color: _currentIndex == 2 ? AppColors.yellow : AppColors.grey,
            ),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/profile_icon.svg',
              color: _currentIndex == 3 ? AppColors.yellow : AppColors.grey,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class LVCarousel extends StatefulWidget {
  const LVCarousel({Key? key}) : super(key: key);

  @override
  State<LVCarousel> createState() => _LVCarouselState();
}

class _LVCarouselState extends State<LVCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(4, 4),
                          blurRadius: 16,
                          color: const Color(0xff1212120f).withOpacity(0.06))
                    ],
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.asset('assets/png/property2.png')),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "The Astin Villa Hotel",
                                style: AppTextStyles.poppinsBlackBold20,
                              ),
                              const SizedBox(height: 10),
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
                              const Row(
                                children: [
                                  Icon(Icons.star, color: AppColors.yellow),
                                  SizedBox(width: 5),
                                  Text(
                                    " 5.0",
                                    style: AppTextStyles.poppinsBlackBold20,
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  )
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       const SizedBox(height: 20),
                  //       Image.asset("assets/png/property1.png"),
                  //       const Text("The Astin Villa Hotel",
                  //           style: AppTextStyles.poppinsBlack20),
                  //       Text(
                  //         "Alice Springs NT 0220, Australia",
                  //         style: AppTextStyles.poppinsBlack20
                  //             .copyWith(color: AppColors.grey),
                  //       ),
                  //       const Row(children: [Text("\$3,700 "), Text("/ night")]),
                  //     ],
                  //   ),
                  // ),
                  ),
            );
          }),
    );
  }
}
