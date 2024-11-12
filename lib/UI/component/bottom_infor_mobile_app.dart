import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BottomInforMobileApp extends StatelessWidget {
  const BottomInforMobileApp({super.key, required this.title});
  final String title;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 250,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),

            child: SvgPicture.asset("assets/image/googleplay.svg"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset("assets/image/appstore.svg"),
          ),


        ],
      ),
    );
  }
}
