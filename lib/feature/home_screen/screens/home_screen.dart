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
        body: Column(
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
          ],
        ));
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
