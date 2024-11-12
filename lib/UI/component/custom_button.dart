import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.person, size: 50,color: Colors.white),
      label: Text('Kirish',

      style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),),
      
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
          ),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
       backgroundColor: MaterialStateProperty.all(Color(0xff3F51B5)),
        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white))
      ),
    );
  }
}
