import 'package:flutter/material.dart';
class BottomInforItem extends StatelessWidget {
  const BottomInforItem({super.key, required this.title, required this.text1, required this.text2, required this.text3});
  final String title;
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 250,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(text1,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w300),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),

          ),
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(text2,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
          ),
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(text3,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w300),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
          ),

        ],
      ),
    );
  }
}
