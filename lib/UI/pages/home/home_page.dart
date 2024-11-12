
import 'package:flutter/material.dart';
import 'package:liber/UI/component/books_types_bar.dart';
import 'package:liber/UI/component/custom_app_bar.dart';
import 'package:liber/UI/widgets/banner_widget.dart';
import 'package:liber/UI/widgets/books_collection.dart';

import '../../widgets/elements_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       color: Colors.white,
       child: SingleChildScrollView(
         child: Column(
           children: [
             CustomAppBar(title: "title", backgroundColor: Colors.white, actions: []),
             Divider(),
             BooksTypesBar(),
             Divider(),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 45.0),
               child: Column(
                 children: [
                   BannerWidget(),
                   ElementsWidget(),
                   Divider(),
                   BookCollectionWidget(title: "Yangi Qo'shilganlar",),
                   Divider(),
                   BookCollectionWidget(title: "Аудио китоблар",),
                   Divider(),
                   BookCollectionWidget(title: "O'quv qo'llanmalar",),
                 ],
               ),
             ),

           ],
         ),
       ),
     ),
    );
  }
}
