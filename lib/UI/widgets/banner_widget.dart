import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liber/UI/colors/colors.dart';
class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          //assets/image/sister.svg
          color: AppColors.bannerBGColor,
          borderRadius: BorderRadius.circular(12),
        ),
      child: Stack(
        children: [
          // Image(image: AssetImage("/assets/image/sister.png"),),
          SvgPicture.asset("assets/image/sister.svg",height: 350,),
          Align(
            alignment: Alignment.centerRight,
            child: Transform.flip(
              flipX: true,
              child:  SvgPicture.asset("assets/image/sister.svg",height: 350,),
            ),
          )

        ],
      ),
    );
  }
}
