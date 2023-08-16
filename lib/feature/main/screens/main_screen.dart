// /*call homescreen
// all the bottom nav code should be called here
// */

import 'package:flutter/material.dart';
import '../../../core/constants/colors.dart';
import '../../../core/icons/hola_home_icons.dart';
import '../../bookings/screens/bookings_screen.dart';
import '../../bookmarks/screens/bookmarks_screen.dart';
import '../../home/screens/home_screen.dart';
import '../../profile/screens/profile_landing_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final pages = [
    const HomeScreen(),
    const BookmarksScreen(),
    const BookingsScreen(),
    const ProfileLandingScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.scaffoldWhite,
          elevation: 5,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.yellow,
          unselectedItemColor: AppColors.grey,
          showUnselectedLabels: true,
          selectedIconTheme: const IconThemeData(color: AppColors.yellow),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(HolaHome.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(HolaHome.bookmark),
              label: "Bookmark",
            ),
            BottomNavigationBarItem(
              icon: Icon(HolaHome.bookings),
              label: "Bookings",
            ),
            BottomNavigationBarItem(
              icon: Icon(HolaHome.profile),
              label: "Profile",
            ),
          ],
        ),
      ),
      // Stack(
      //   children: <Widget>[
      //     IndexedStack(
      //       index: _currentIndex,
      //       // children: page,
      //     ),
      //     Positioned(
      //       bottom: 0,
      //       left: 0,
      //       right: 0,
      //       child: ClipRRect(
      //         borderRadius: const BorderRadius.only(
      //           topLeft: Radius.circular(20),
      //           topRight: Radius.circular(20),
      //         ),
      //         child: BottomNavigationBar(
      //           backgroundColor: AppColors.scaffoldWhite,
      //           elevation: 5,
      //           type: BottomNavigationBarType.fixed,
      //           selectedItemColor: AppColors.yellow,
      //           unselectedItemColor: AppColors.grey,
      //           showUnselectedLabels: true,
      //           selectedIconTheme: const IconThemeData(color: AppColors.yellow),
      //           items: const [
      //             BottomNavigationBarItem(
      //               icon: Icon(HolaHome.home),
      //               label: "Home",
      //             ),
      //             BottomNavigationBarItem(
      //               icon: Icon(HolaHome.bookmark),
      //               label: "Bookmark",
      //             ),
      //             BottomNavigationBarItem(
      //               icon: Icon(HolaHome.bookings),
      //               label: "Bookings",
      //             ),
      //             BottomNavigationBarItem(
      //               icon: Icon(HolaHome.profile),
      //               label: "Profile",
      //             ),
      //           ],
      //           currentIndex: _currentIndex,
      //           onTap: _onItemTap,
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final int _currentIndex = 0;
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
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.yellow,
        unselectedItemColor: AppColors.grey,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(color: AppColors.yellow),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(HolaHome.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(HolaHome.bookmark),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(HolaHome.bookings),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(HolaHome.profile),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
