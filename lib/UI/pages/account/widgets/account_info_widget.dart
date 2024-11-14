import 'package:flutter/material.dart';
class AccountInfoWidget extends StatelessWidget {
  const AccountInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(14)
      ),
    child: Wrap(

      children: [
        Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(80),
            image: const DecorationImage(image: AssetImage("assets/image/sister.svg.png"),fit: BoxFit.cover)
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text("Суғдиёна Икромова",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text("+998 90 253 77 53",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text("ID: 0001  Баланс: 45 000 сўм",style: TextStyle(fontSize: 20,color:Colors.black26,fontWeight: FontWeight.w200),),
            ),

          ],),
        )
      ],
    ),

    );
  }
}
