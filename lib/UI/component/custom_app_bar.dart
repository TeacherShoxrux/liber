import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CustomAppBar extends StatelessWidget{
  final String title;
  final Color backgroundColor;
  final List<Widget> actions;
  const CustomAppBar({required this.title, required this.backgroundColor, required this.actions});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,//Text(title),
      color: backgroundColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(height: 90),
              SvgPicture.asset(
                  "assets/icons/app_icon.svg",
                 height: 110,
                  fit: BoxFit.cover,
                  semanticsLabel: 'Acme Logo'
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Liber",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                  Text("Barcha turdagi kitoblar"),
                ],
              ),
            ],
          ),


        ],
      ),
      // actions: actions,
    );
  }
}

