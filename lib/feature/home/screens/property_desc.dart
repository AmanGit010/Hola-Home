import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hola_home/core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PropertyDesc extends StatelessWidget {
  const PropertyDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const _BottomNavBar(),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ImageCarousel(),
                const _Title(),
                const _Details(),
                const _Description(),
                const _Amenities(),
                const _Reviews(),
                const _Location(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: const BoxDecoration(
        color: AppColors.lightYellow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RichText(
              text: TextSpan(children: [
            const TextSpan(
                text: "\$ 209 ", style: AppTextStyles.poppinsBlackBold20),
            TextSpan(
                text: "/ Night ",
                style: AppTextStyles.poppinsBlackBold20
                    .copyWith(color: AppColors.grey))
          ])),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const PropertyDesc()),
                // );
              },
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Text("Book now",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.poppinsBlackBold20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ImageCarousel extends StatelessWidget {
  _ImageCarousel({Key? key}) : super(key: key);

  final PageController _pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.29,
              // width: ,
              child: PageView(
                controller: _pagecontroller,
                children: [
                  Image.asset('assets/png/property_desc.png'),
                  Image.asset('assets/png/property_desc.png'),
                  Image.asset('assets/png/property_desc.png'),
                  Image.asset('assets/png/property_desc.png'),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.275,
              width: MediaQuery.of(context).size.width * 1.0,
              alignment: Alignment.bottomCenter,
              child: SmoothPageIndicator(
                controller: _pagecontroller,
                count: 4,
                effect: const ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: AppColors.yellow,
                  // verticalOffset: 20,
                ),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17, top: 12),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.85),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: SvgPicture.asset(
                              'assets/svg/arrow_back_icon.svg'),
                        )),
                  ),
                ),
                const SizedBox(width: 215),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.85),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: SvgPicture.asset('assets/svg/share_icon.svg'),
                        )),
                  ),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, right: 22),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.85),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child:
                              SvgPicture.asset('assets/svg/bookmark_icon2.svg'),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 22),
              child: Text(
                "The Astin Villa Hotel",
                style: AppTextStyles.poppinsBlackBold30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 18),
              child: Row(
                children: [
                  Icon(Icons.star, color: AppColors.yellow),
                  Text(" 5.0", style: AppTextStyles.latoBlackBold20),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on, color: AppColors.yellow),
              SizedBox(width: 2),
              Text("12 Eze Adele Road, Rumuomasi\nLagos, Wallace, Australia.",
                  style: AppTextStyles.poppinsBlack20)
            ],
          ),
        ),
        SizedBox(height: 20),
        Divider(),
        SizedBox(height: 20),
      ],
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 22),
          child: Text(
            "Details",
            style: AppTextStyles.poppinsBlackBold20,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 28),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: AppColors.grey.withOpacity(0.4)),
                        color: const Color(0xfff7f8fa)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 12),
                      child: SvgPicture.asset(
                          'assets/svg/property_desc/villa_icon.svg'),
                    ),
                  ),
                  Text("Villa",
                      style:
                          AppTextStyles.poppinsBlack10.copyWith(fontSize: 15))
                ],
              ),
              const SizedBox(width: 24),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: AppColors.grey.withOpacity(0.4)),
                        color: const Color(0xfff7f8fa)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      child: SvgPicture.asset(
                          'assets/svg/property_desc/bedroom_icon.svg'),
                    ),
                  ),
                  Text("4 Bedroom",
                      style:
                          AppTextStyles.poppinsBlack10.copyWith(fontSize: 15))
                ],
              ),
              const SizedBox(width: 24),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(color: AppColors.grey.withOpacity(0.4)),
                        color: const Color(0xfff7f8fa)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      child: SvgPicture.asset(
                          'assets/svg/property_desc/bath_icon.svg'),
                    ),
                  ),
                  Text("5 Baths",
                      style:
                          AppTextStyles.poppinsBlack10.copyWith(fontSize: 15))
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        const Divider(),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Description", style: AppTextStyles.poppinsBlackBold20),
          const SizedBox(height: 15),
          Text(
              "The villa is located in the most popular tourist area in Toronto, perfect for those of you who like backpackers. We'll bring you through some of the most unique hotels that you never thought you'll find in Bali. Let's find out!",
              style: AppTextStyles.poppinsBlack10.copyWith(fontSize: 15)),
          const SizedBox(height: 20),
          Row(
            children: [
              const CircleAvatar(
                radius: 27,
                foregroundImage: AssetImage('assets/png/profile_pic.png'),
              ),
              const SizedBox(width: 10),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Private Host\n',
                        style: AppTextStyles.poppinsBlack10
                            .copyWith(fontSize: 15)),
                    TextSpan(
                        text: 'Charles',
                        style: AppTextStyles.poppinsBlackBold10
                            .copyWith(fontSize: 15)),
                  ],
                ),
              ),
              const SizedBox(width: 110),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const QnAScreen()),
                  // );
                },
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    decoration: BoxDecoration(
                      color: AppColors.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Contact Host",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.poppinsBlack10
                              .copyWith(fontSize: 15)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _Amenities extends StatelessWidget {
  const _Amenities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Amenities", style: AppTextStyles.poppinsBlackBold20),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.grey.withOpacity(0.4)),
                          color: const Color(0xfff7f8fa)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 12),
                        child: SvgPicture.asset(
                            'assets/svg/property_desc/parking_icon.svg'),
                      ),
                    ),
                    Text("Parking",
                        style:
                            AppTextStyles.poppinsBlack10.copyWith(fontSize: 15))
                  ],
                ),
                const SizedBox(width: 24),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.grey.withOpacity(0.4)),
                          color: const Color(0xfff7f8fa)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: SvgPicture.asset(
                            'assets/svg/property_desc/wifi_icon.svg'),
                      ),
                    ),
                    Text("Wifi",
                        style:
                            AppTextStyles.poppinsBlack10.copyWith(fontSize: 15))
                  ],
                ),
                const SizedBox(width: 24),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.grey.withOpacity(0.4)),
                          color: const Color(0xfff7f8fa)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: SvgPicture.asset(
                            'assets/svg/property_desc/sunset_icon.svg'),
                      ),
                    ),
                    Text("Beach",
                        style:
                            AppTextStyles.poppinsBlack10.copyWith(fontSize: 15))
                  ],
                ),
                const SizedBox(width: 24),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.grey.withOpacity(0.4)),
                          color: const Color(0xfff7f8fa)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: SvgPicture.asset(
                            'assets/svg/property_desc/swimming_icon.svg'),
                      ),
                    ),
                    Text("Pool",
                        style:
                            AppTextStyles.poppinsBlack10.copyWith(fontSize: 15))
                  ],
                ),
                const SizedBox(width: 24),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.grey.withOpacity(0.4)),
                          color: const Color(0xfff7f8fa)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 8),
                        child: SvgPicture.asset(
                            'assets/svg/property_desc/hot_bath_icon.svg'),
                      ),
                    ),
                    Text("Hot Tub",
                        style:
                            AppTextStyles.poppinsBlack10.copyWith(fontSize: 15))
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _Reviews extends StatelessWidget {
  const _Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 22),
      child: Column(
        children: [
          Row(
            children: [
              const Text("Reviews", style: AppTextStyles.poppinsBlackBold20),
              const SizedBox(width: 10),
              Row(
                children: [
                  const Icon(Icons.star, color: AppColors.yellow),
                  Text(" 5.0",
                      style:
                          AppTextStyles.latoBlackBold20.copyWith(fontSize: 15)),
                ],
              ),
              const SizedBox(width: 10),
              Text("(22 Reviews)",
                  style: AppTextStyles.poppinsBlack20
                      .copyWith(color: AppColors.grey, fontSize: 15)),
              const SizedBox(width: 100),
              GestureDetector(
                // onTap: () => ,
                child: Text("See All",
                    style: AppTextStyles.poppinsBlack20
                        .copyWith(color: AppColors.yellow)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            // color: Colors.red,
            height: MediaQuery.of(context).size.height * 0.7,
            child: ListView.builder(
                shrinkWrap: true,
                // scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(4, 4),
                              blurRadius: 16,
                              color: const Color(0x1212120f).withOpacity(0.09))
                        ],
                        // color: AppColors.yellow,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      child: CircleAvatar(
                                        radius: 27,
                                        foregroundImage: AssetImage(
                                            'assets/png/profile_pic.png'),
                                      )),
                                ),
                                const SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: 'Ivande Othawa\n',
                                            style: AppTextStyles
                                                .poppinsBlackBold10
                                                .copyWith(fontSize: 15)),
                                        TextSpan(
                                            text: 'Jan 20, 2025',
                                            style: AppTextStyles.poppinsBlack10
                                                .copyWith(
                                                    fontSize: 15,
                                                    color: AppColors.grey))
                                      ]),
                                    ),
                                    const SizedBox(width: 30),
                                  ],
                                ),
                                const SizedBox(width: 65),
                                Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.yellow,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Row(
                                        children: [
                                          const Icon(Icons.star,
                                              color: Colors.black),
                                          Text(
                                            " 5.0",
                                            style: AppTextStyles.poppinsBlack10
                                                .copyWith(fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Text(
                                "Very nice and comfortable hotel, thank you for accompanying my vacation!",
                                style: AppTextStyles.poppinsBlack10
                                    .copyWith(fontSize: 15),
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _Location extends StatelessWidget {
  const _Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Location", style: AppTextStyles.poppinsBlackBold20),
          const SizedBox(height: 10),
          FractionallySizedBox(
            widthFactor: 1,
            // heightFactor: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.lightYellow,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Text(
                  "Google Maps comes here",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
