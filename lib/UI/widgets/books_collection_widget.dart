import 'package:flutter/material.dart';
import 'package:liber/UI/component/book_item.dart';
import '../horizontal_scroll_behavoir.dart';

class BookCollectionWidget extends StatelessWidget {
  const BookCollectionWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(title,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          ),
          SizedBox(
            height: 240,
            width: double.infinity,
            child: ScrollConfiguration(
                behavior: HorizontalScrollBehavior(),
                child: Container(
                  height: 230,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  color: Colors.white,
                  child: Center(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: ListView.builder(
                        itemCount: 13,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (c, i) => BookItem(),

                      ),
                    ),
                  ),
                ))


            ,
          ),
        ],
      ),
    );
  }
}
