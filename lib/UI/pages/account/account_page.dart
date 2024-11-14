import 'package:flutter/material.dart';
import 'package:liber/UI/pages/account/widgets/account_info_widget.dart';
import 'package:liber/UI/pages/account/widgets/account_menu.dart';
import 'package:liber/UI/widgets/book_category_filter_widget.dart';

import '../../component/books_types_bar.dart';
import '../../component/custom_app_bar.dart';
import '../../widgets/bottom_information_widget.dart';
import '../../widgets/bottom_social_media_widget.dart';
import 'nested_pages/account_balance_widget.dart';
import 'nested_pages/saved_books_widget.dart';
import 'nested_pages/setting_form.dart';
import 'nested_pages/upload_page.dart';
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

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
                  child:   AccountInfoWidget()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        AccountMenu()
                      ],
                    ),
                    // AccountInfoWidget()
                    // SettingsForm()
          // SavedBooksWidget(
          //   books: [
          //     BookItem(
          //       title: 'Элвинга аталган гуллар',
          //       category: 'Сиёсат, фантастика',
          //       rating: 4.7,
          //       reviews: 244,
          //       imageUrl: 'https://picsum.photos/200/300', // Replace with your image URL
          //       isFavorite: true,
          //     ),
          //     BookItem(
          //       title: 'Элвинга аталган гуллар',
          //       category: 'Сиёсат, фантастика',
          //       rating: 4.7,
          //       reviews: 244,
          //       imageUrl: 'https://picsum.photos/200/300', // Replace with your image URL
          //       isFavorite: true,
          //     ),
          //   ],)
          //           AccountBalanceWidget(balance: 45000,),
                    UploadScreen()
                    // Flexible(child: BookSortWidget())

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
