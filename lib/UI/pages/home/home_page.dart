
import 'package:flutter/material.dart';
import 'package:liber/UI/component/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       child: Column(
         children: [
           CustomAppBar(title: "title", backgroundColor: Colors.green, actions: [])
         ],
       ),
     ),
    );
  }
}
