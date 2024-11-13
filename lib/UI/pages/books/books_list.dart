import 'package:flutter/material.dart';
import 'package:liber/UI/colors/colors.dart';

import 'book_sort_widget.dart';
class BooksList extends StatefulWidget {
  const BooksList({super.key});

  @override
  State<BooksList> createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  var blk=false;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(children: [
        BookSortWidget()
      ],),
    );
  }
}
