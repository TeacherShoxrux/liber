import 'package:flutter/material.dart';
import 'package:liber/UI/colors/colors.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width: 160,
      decoration: BoxDecoration(
        // color: Colors.amber,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black12.withOpacity(0.06))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 2,vertical: 2),
            width: 160,
            height: 160,
            decoration: BoxDecoration(
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black45, // Adjust opacity for darkness level
                      BlendMode.darken,
                    ),
                    image: NetworkImage("https://picsum.photos/200/300"))),
            child: const Align(
              alignment: Alignment.bottomCenter,
            ),
          ),
          Text(
            "Бепарволикнинг но Rich dad poor dad ",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "SIYOSAT, FANTASTIKA",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.mainColor),


          ),
        ],
      ),
    );
  }
}
