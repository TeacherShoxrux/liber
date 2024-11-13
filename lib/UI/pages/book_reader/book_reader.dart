import 'package:flutter/material.dart';
import 'package:liber/UI/colors/colors.dart';
import 'package:liber/UI/component/download_button.dart';
import 'package:liber/UI/pages/book_reader/page_indecator.dart';
import 'package:liber/UI/pages/book_reader/zoom_component.dart';

import '../../component/books_types_bar.dart';
import '../../component/custom_app_bar.dart';
import '../../widgets/bottom_information_widget.dart';
import '../../widgets/bottom_social_media_widget.dart';

class BookReader extends StatelessWidget {
  const BookReader({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                  title: "title", backgroundColor: Colors.white, actions: []),
              const Divider(),
              const BooksTypesBar(),
              const Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: TextButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(AppColors.bannerBGColor),
                          foregroundColor:
                              WidgetStatePropertyAll(AppColors.grayDark)),
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                      label: const Text("Orqaga qaytish"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 300.0, vertical: 30),
                    child: Row(
                      children: [
                        DownloadButton(),
                        SizedBox(
                          width: 10,
                        ),
                        Text("PDF - 174,12 Kb")
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 920,
                      padding: const EdgeInsets.all(12),
                      color: Colors.black54,
                      height: 1431,
                      child: Column(
                        children: [
                          Container(
                            width: 920,
                            height: 72,
                            padding: const EdgeInsets.all(12),
                            color: Colors.black54,
                            child: Row(

                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                    )),
                                const Flexible(flex: 10,
                                    child: Text(
                                      "Banana Bread RecipeBanana "
                                          "Bread RecipeBanana Bread Recipe"
                                          // "Banana Bread RecipeBanana Bread "
                                          "Recipe",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),

                                const Spacer(),


                                // Text("Banana Bread Recipe",style: TextStyle(fontSize:18,color: Colors.white,fontWeight: FontWeight.w200),)
                                // SizedBox(width:200,child: Slider(min:0,max:100,value: 10, onChanged: (e){})),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: PageIndicatorWidget(
                                    currentPage: 6,
                                    totalPages: 10,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "|",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child:  ZoomControlWidget(
                                    onZoomChanged: (double) {},
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                                itemCount: 12,
                                itemBuilder: (c,i)=>
                                    Container(
                                      color: Colors.white,
                                      margin: EdgeInsets.symmetric(vertical: 15),
                                      width: 940,height: 1300,)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
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
