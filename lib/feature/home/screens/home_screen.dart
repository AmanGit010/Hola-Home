// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../../core/icons/hola_home_icons.dart';
import '../store/home_store.dart';
import 'map_screen.dart';
import 'nearby_properties_screen.dart';
import 'popular_properties_screen.dart';
import 'property_desc_screen.dart';
import 'search_page_screen.dart';

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
              Image.asset('assets/png/app/home_screen_logo.png'),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapScreen()));
                },
                child: const Text(
                  "Map",
                  style: AppTextStyles.poppinsBlack20,
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const NavBar(),
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchPage()));
              },
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
                        SvgPicture.asset('assets/svg/search/search_icon.svg')
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const NearbyPropertiesScreen()));
                    },
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PopularPropertiesScreen()));
                    },
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

class _NearbyProp extends StatefulWidget {
  const _NearbyProp({Key? key}) : super(key: key);

  @override
  State<_NearbyProp> createState() => __NearbyPropState();
}

class __NearbyPropState extends State<_NearbyProp> {
  final HomeStore homeStore = HomeStore();
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
            return const _NearbyPropContainer();
          }),
    );
  }
}

class _NearbyPropContainer extends StatelessWidget {
  const _NearbyPropContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeStore homeStore = HomeStore();
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PropertyDesc()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Container(
          width: 300,
          decoration: BoxDecoration(
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
                    child: Image.asset('assets/png/property/property.png')),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 15),
                  child: GestureDetector(
                    onTap: () {
                      homeStore.setFilled(!homeStore.bookmarked);
                    },
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
  }
}

class _PopularProp extends StatelessWidget {
  const _PopularProp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(4, 4),
                        blurRadius: 16,
                        color: const Color(0x1212120f).withOpacity(0.06))
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 12),
                      child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          child: Image.asset(
                              'assets/png/property/popular_property.png')),
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
                              r"$ 1,650 / night",
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
