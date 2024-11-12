import 'package:flutter/material.dart';
import 'package:liber/UI/colors/colors.dart';

import '../horizontal_scroll_behavoir.dart';

class BooksTypesBar extends StatelessWidget {
  const BooksTypesBar({super.key});
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const ClampingScrollPhysics(); // Provides smooth scrolling
  }
  ScrollIncrementType getScrollIncrementType(ScrollableDetails details) {
    return ScrollIncrementType.line; // Enables smooth pixel-based scroll
  }
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: HorizontalScrollBehavior(),
      child: Container(
        height: 48,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 2, horizontal: 1),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: ListView.builder(
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (c, i) =>
                    TextButton(
                        onPressed: () {},
                        child: Text("Аудиокитоб $i",style: const TextStyle(color: AppColors.mainColor,fontWeight: FontWeight.bold), ))),
          ),
        ),
      ),
    );
  }
}
