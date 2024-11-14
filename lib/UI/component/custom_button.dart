import 'package:flutter/material.dart';
import 'package:liber/UI/colors/colors.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:
          16, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.mainColor,
        // Adjust the color as needed
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.person,
            color: Colors.white,
            size: 24,
          ),
          SizedBox(width: 8),
          Text(
            'Кириш',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return ElevatedButton.icon(
  //     onPressed: () {},
  //     icon: Icon(Icons.person, size: 50,color: Colors.white),
  //     label: Text('Kirish',
  //
  //     style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),),
  //
  //     style: ButtonStyle(
  //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
  //           RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(14.0),
  //           ),
  //         ),
  //         padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
  //      backgroundColor: MaterialStateProperty.all(Color(0xff3F51B5)),
  //       textStyle: MaterialStateProperty.all(TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white))
  //     ),
  //   );
  // }
}
