import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../store/home_store.dart';
import '../widgets/box_tile.dart';
import '../widgets/reviews_widget.dart';
import 'availability_screen.dart';
import 'reviews_screen.dart';

class PropertyDesc extends StatelessWidget {
  const PropertyDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const _BottomNavBar(),
      body: SafeArea(
        child: ListView(
          children: const [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ImageCarousel(),
                _Title(),
                _Details(),
                _Description(),
                _Amenities(),
                _Reviews(),
                _Location(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageCarousel extends StatefulWidget {
  const _ImageCarousel({Key? key}) : super(key: key);

  @override
  State<_ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<_ImageCarousel> {
  int _currentPage = 0;

  final HomeStore homeStore = HomeStore();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.29,
          // width: ,
          child: PageView.builder(
              itemCount: 4,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.asset('assets/png/property_desc.png');
              }),
        ),
        Positioned(
          bottom: 11,
          left: 0,
          right: 0,
          child: PageIndicator(pageCount: 4, currentIndex: _currentPage),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12, left: 17, right: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.85),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Padding(
                      padding: EdgeInsets.all(13),
                      child: Icon(Icons.arrow_back),
                    )),
              ),
              Wrap(
                spacing: 10,
                children: [
                  GestureDetector(
                    // onTap: () => ,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.85),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.all(13),
                          // child: SvgPicture.asset('assets/svg/share_icon.svg'),
                          child: Icon(Icons.ios_share_rounded),
                        )),
                  ),
                  GestureDetector(
                    onTap: () => homeStore.setFilled(!homeStore.bookmarked),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.85),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Observer(builder: (context) {
                            return homeStore.bookmarked
                                ? const Icon(Icons.bookmark_rounded)
                                : const Icon(Icons.bookmark_border_rounded);
                          }),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
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
        SizedBox(height: 15),
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
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 22),
          child: Text(
            "Details",
            style: AppTextStyles.poppinsBlackBold20,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: Wrap(
            spacing: 26,
            children: [
              BoxTile(
                image: 'assets/svg/property_description/villa_icon.svg',
                text: 'Villa',
              ),
              BoxTile(
                  image: 'assets/svg/property_description/bedroom_icon.svg',
                  text: '4 Bedroom')
            ],
          ),
        ),
        SizedBox(height: 15),
        Divider(),
        SizedBox(height: 20),
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
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const _ContactHostDialog();
                      });
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const _BKF()),
                  // );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.25))
                    ],
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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Amenities", style: AppTextStyles.poppinsBlackBold20),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Wrap(
              spacing: 24,
              children: [
                BoxTile(
                  image: 'assets/svg/property_description/parking_icon.svg',
                  text: 'Parking',
                ),
                BoxTile(
                  image: 'assets/svg/property_description/wifi_icon.svg',
                  text: 'Wifi',
                ),
                BoxTile(
                  image: 'assets/svg/property_description/sunset_icon.svg',
                  text: 'Beach',
                ),
                BoxTile(
                  image: 'assets/svg/property_description/swimming_icon.svg',
                  text: 'Pool',
                ),
                BoxTile(
                  image: 'assets/svg/property_description/hot_tub_icon.svg',
                  text: 'Hot Tub',
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 20),
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
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
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
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReviewsScreen())),
                child: Text("See All",
                    style: AppTextStyles.poppinsBlack20
                        .copyWith(color: AppColors.yellow)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              // scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (context, index) {
                return const ReviewsWidget();
              }),
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
          const Text("Location", style: AppTextStyles.poppinsBlackBold20),
          const SizedBox(height: 10),
          FractionallySizedBox(
            widthFactor: 1,
            // heightFactor: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.lightYellow,
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(50),
                child: Text(
                  "Google Maps comes here",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(height: 130),
        ],
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
                text: r"$ 209 ", style: AppTextStyles.poppinsBlackBold20),
            TextSpan(
                text: "/ Night ",
                style: AppTextStyles.poppinsBlackBold20
                    .copyWith(color: AppColors.grey))
          ])),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AvailabilityScreen()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.25))
                  ],
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
        ],
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator(
      {required this.pageCount, required this.currentIndex, Key? key})
      : super(key: key);
  final int pageCount;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(pageCount, (index) {
        return Container(
          width: 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentIndex ? AppColors.yellow : AppColors.grey,
          ),
        );
      }),
    );
  }
}

class _ContactHostDialog extends StatelessWidget {
  const _ContactHostDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.highlight_remove_rounded)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage('assets/png/profile_pic.png'),
              ),
              const SizedBox(width: 15),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Name: ',
                            style: AppTextStyles.poppinsBlackBold10
                                .copyWith(fontSize: 15)),
                        TextSpan(
                            text: 'Charles\n',
                            style: AppTextStyles.poppinsBlack10
                                .copyWith(fontSize: 15)),
                        TextSpan(
                            text: 'Mobile Number: ',
                            style: AppTextStyles.poppinsBlackBold10
                                .copyWith(fontSize: 15)),
                        TextSpan(
                            text: '+91 89xxxxxx90\n',
                            style: AppTextStyles.poppinsBlack10
                                .copyWith(fontSize: 15)),
                        TextSpan(
                            text: 'Email: ',
                            style: AppTextStyles.poppinsBlackBold10
                                .copyWith(fontSize: 15)),
                        TextSpan(
                            text: 'charlesma@gmail.com',
                            style: AppTextStyles.poppinsBlack10
                                .copyWith(fontSize: 15)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30)
                ],
              )
            ],
          ),
        ],
      ),
    );
    // AlertDialog(
    //   title: Text("Dialog"),
    //   content: Text('This is the content of my dialog.'),
    //   actions: <Widget>[
    //     TextButton(
    //       onPressed: () {
    //         Navigator.of(context).pop(); // Close the dialog
    //       },
    //       child: Text('OK'),
    //     ),
    //   ],
    // );
  }
}
