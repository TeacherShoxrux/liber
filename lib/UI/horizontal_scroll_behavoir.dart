import 'package:flutter/cupertino.dart';

class HorizontalScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const ClampingScrollPhysics(); // Provides smooth scrolling
  }

  @override
  ScrollIncrementType getScrollIncrementType(ScrollableDetails details) {
    return ScrollIncrementType.line; // Enables smooth pixel-based scroll
  }
}