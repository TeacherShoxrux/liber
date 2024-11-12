import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PaymentAcceptsComponent extends StatelessWidget {
  const PaymentAcceptsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Биз қабул қиламиз",style: TextStyle(color: Colors.white),),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(top: 0.0,bottom: 0,right: 10),
              child: SvgPicture.asset("assets/image/humo.svg"),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SvgPicture.asset("assets/image/uzcard.svg"),
            ),
          ],)
        ],
      ),
    );
  }
}
