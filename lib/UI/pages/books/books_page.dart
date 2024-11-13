import 'package:flutter/material.dart';
import 'package:liber/UI/widgets/book_category_filter_widget.dart';

import '../../component/books_types_bar.dart';
import '../../component/custom_app_bar.dart';
import '../../widgets/bottom_information_widget.dart';
import '../../widgets/bottom_social_media_widget.dart';
import 'books_list.dart';
class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(title: "title", backgroundColor: Colors.white, actions: []),
              const Divider(),
              const BooksTypesBar(),
              const Divider(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        BookCategoryFilterWidget()
                      ],
                    ),
                    //here
                    BooksList()
                  ],
                  ),
               ),
              const BottomInformationWidget(),
              const BottomSocialMediaWidget()

            ],
          ),
        ),
      ),
    );
  }
}
