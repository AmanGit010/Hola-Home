// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hola_home/core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';
import 'package:hola_home/feature/home/screens/nearby_properties.dart';
import 'package:hola_home/feature/home/screens/popular_properties.dart';
import 'package:hola_home/feature/home/screens/property_desc.dart';
import 'package:hola_home/feature/home/screens/search_page.dart';
import 'package:hola_home/feature/home/screens/map_screen.dart';

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
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MapScreen())),
                child: const Text(
                  "Map",
                  style: AppTextStyles.poppinsBlack20,
                ),
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
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchPage())),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: AppColors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Location",
                          style: AppTextStyles.poppinsBlack20
                              .copyWith(color: AppColors.grey),
                        ),
                        SvgPicture.asset('assets/svg/search_icon.svg')
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Nearby Properties",
                      style: AppTextStyles.poppinsBlackBold20),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NearbyProperties())),
                    child: Text(
                      "See all",
                      style: AppTextStyles.poppinsBlackBold10
                          .copyWith(color: AppColors.grey, fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 5),
            const _NearbyProp(),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Popular Properties",
                      style: AppTextStyles.poppinsBlackBold20),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PopularProp())),
                    child: Text(
                      "See all",
                      style: AppTextStyles.poppinsBlackBold10
                          .copyWith(color: AppColors.grey, fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            const _PopularProp(),
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
              'assets/svg/bookmark_navbar_icon.svg',
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

class _NearbyProp extends StatefulWidget {
  const _NearbyProp({Key? key}) : super(key: key);

  @override
  State<_NearbyProp> createState() => __NearbyPropState();
}

class __NearbyPropState extends State<_NearbyProp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      height: MediaQuery.of(context).size.height * 0.46,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertyDesc())),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Container(
                  width: 300,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(alignment: Alignment.topRight, children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image.asset('assets/png/property.png')),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, top: 15),
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
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class _PopularProp extends StatelessWidget {
  const _PopularProp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
          shrinkWrap: true,
          // scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(4, 4),
                        blurRadius: 16,
                        color: const Color(0x1212120f).withOpacity(0.06))
                  ],
                  // color: AppColors.yellow,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 12),
                      child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          child:
                              Image.asset('assets/png/popular_property.png')),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text("Amara Hills",
                                style: AppTextStyles.poppinsBlackBold20),
                            const SizedBox(width: 30),
                            Text(
                              "\$ 1,650 / night",
                              style: AppTextStyles.poppinsBlackBold10
                                  .copyWith(fontSize: 15),
                            ),
                          ],
                        ),
                        Text(
                          "Wilora NT 0872, Australia",
                          style: AppTextStyles.poppinsBlack20
                              .copyWith(color: AppColors.grey, fontSize: 15),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.star, color: AppColors.yellow),
                            const Icon(Icons.star, color: AppColors.yellow),
                            const Icon(Icons.star, color: AppColors.yellow),
                            const Icon(Icons.star, color: AppColors.yellow),
                            const Icon(Icons.star, color: AppColors.yellow),
                            const SizedBox(width: 5),
                            Text(
                              "5.0",
                              style: AppTextStyles.poppinsBlackBold10
                                  .copyWith(fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
