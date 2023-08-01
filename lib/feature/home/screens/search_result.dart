import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hola_home/core/constants/colors.dart';
import 'package:hola_home/core/constants/styles.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Search Result",
          style: AppTextStyles.poppinsBlack20.copyWith(fontSize: 25),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset('assets/svg/filter_icon.svg'),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: const [
            Column(
              children: [Text("Search result")],
            )
          ],
        ),
      ),
    );
  }
}
