import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liber/UI/colors/colors.dart';
import 'package:liber/UI/component/book_item.dart';

import 'book_sort_widget.dart';

class BooksList extends StatefulWidget {
  const BooksList({super.key});

  @override
  State<BooksList> createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  var blk = false;
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // int crossAxisCount = (screenWidth / 180).floor()-1;
    return Flexible(
      child: Column(
        children: [
          BookSortWidget(
            onTapGrid: () {
              setState(() {
                blk = true;
              });
            },
            onTapList: () {
              setState(() {
                blk = false;
              });
            },
          ),
          if (!blk)
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (c, i) {
                  return Container(
                    margin: const EdgeInsets.all(15),
                    height: 230,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: Colors.black12)),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 2),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              // color: Colors.amber,
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                    Colors
                                        .black45, // Adjust opacity for darkness level
                                    BlendMode.darken,
                                  ),
                                  image: NetworkImage(
                                      "https://picsum.photos/200/300"))),
                          child: const Align(
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Flexible(
                                child: Text(
                                  "Даниел КИЗ Rich dad poor Даниел КИЗ Rich d dad Rich dad poor dad",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "SIYOSAT, FANTASTIKA",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: AppColors.mainColor),
                              ),
                              Flexible(
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                                  " ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla ",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SvgPicture.asset(
                                    "assets/image/stars.svg"),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          if (blk)
            GridView.builder(
                itemCount: 19,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    childAspectRatio: 160 / 240, maxCrossAxisExtent: 160),
                itemBuilder: (c, i) {
                  return const BookItem();
                })
        ],
      ),
    );
  }
}
