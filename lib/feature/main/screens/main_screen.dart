// /*call homescreen
// all the bottom nav code should be called here
// */

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:hola_home/core/constants/colors.dart';
// import 'package:hola_home/core/constants/styles.dart';
// import 'package:hola_home/feature/home/screens/home_screen.dart';

// class MainScreen extends StatelessWidget {
//   const MainScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final pages = [
//       HomeScreen(),
//       SizedBox(),
//       SizedBox(),
//       SizedBox(),
//     ];
//     return Scaffold(
//       body: pages[index],
//       bottomNavigationBar: ClipRRect(
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(20),
//           topRight: Radius.circular(20),
//         ),
//         child: BottomNavigationBar(
//           showSelectedLabels: true,

//           showUnselectedLabels: false,

//           selectedLabelStyle: AppTextStyles.poppinsBlack10.copyWith(
//             fontWeight: FontWeight.w600,
//             color: AppColors.yellow,
//           ),

//           selectedItemColor: AppColors.black,

//           unselectedItemColor: const Color(0xffB6B6B6),

//           type: BottomNavigationBarType.fixed,
//           // backgroundColor: AppColors.scaffoldWhite,
//           // elevation: 5,
//           // currentIndex: _currentIndex,
//           // onTap: (int index) {
//           //   setState(() {
//           //     _currentIndex = index;
//           //   });
//           // },
//           // type: BottomNavigationBarType.fixed,
//           // selectedItemColor: AppColors.yellow,
//           // unselectedItemColor: AppColors.grey,
//           // showUnselectedLabels: true,
//           // selectedIconTheme: const IconThemeData(color: AppColors.yellow),
//           items: [
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/svg/home_icon.svg',
//               ),
//               label: "Home",
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/svg/bookmark_navbar_icon.svg',
//               ),
//               label: "Bookmark",
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/svg/bookings_icon.svg',
//               ),
//               label: "Bookings",
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset(
//                 'assets/svg/profile_icon.svg',
//               ),
//               label: "Profile",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
