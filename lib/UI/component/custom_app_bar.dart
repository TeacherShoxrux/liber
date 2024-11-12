import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liber/UI/component/custom_button.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final List<Widget> actions;
  CustomAppBar(
      {required this.title,
      required this.backgroundColor,
      required this.actions});
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity, //Text(title),
      color: backgroundColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(height: 90),
              SvgPicture.asset("assets/icons/app_icon.svg",
                  height: 110, fit: BoxFit.cover, semanticsLabel: 'Acme Logo'),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Liber",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Text("Barcha turdagi kitoblar"),
                ],
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => _searchController.clear(),
                  ),
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: CustomButton(),
          )
        ],
      ),
      // actions: actions,
    );
  }
}
