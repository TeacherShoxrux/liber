
import 'package:flutter/material.dart';
import 'package:liber/UI/component/books_types_bar.dart';
import 'package:liber/UI/component/custom_app_bar.dart';

import '../../widgets/elements_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       color: Colors.grey,
       child: Column(
         children: [
           CustomAppBar(title: "title", backgroundColor: Colors.white, actions: []),
           BooksTypesBar(),
           ElementsWidget()
         ],
       ),
     ),
    );
  }
}
