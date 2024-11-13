import 'package:flutter/material.dart';
import 'package:liber/UI/colors/colors.dart';

import '../component/check_filter_item.dart';
class BookCategoryFilterWidget extends StatelessWidget {
  const BookCategoryFilterWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 250,
      maxWidth: 300,
      child: Container(
        constraints: const BoxConstraints(
       ),
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.symmetric(vertical: 15),

        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(14)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Рукнлар",style: TextStyle(color: AppColors.grayDark,fontWeight: FontWeight.bold),),
            CheckFilterItem(onChecked: (bool c) {  },),
            CheckFilterItem(onChecked: (bool c) {  },),
            CheckFilterItem(onChecked: (bool c) {  },),
          ],
        ),
      ),
    );
  }
}
