import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ContactLinkComponent extends StatelessWidget {
  const ContactLinkComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Ижтимоий тармоқлар",style: TextStyle(color: Colors.white),),
          Row(children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0,bottom: 10,right: 10),
            child: SvgPicture.asset("assets/icons/facebook.svg"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset("assets/icons/instagram.svg"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset("assets/icons/tik_tok.svg"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset("assets/icons/you_tube.svg"),
          )
          ],)
        ],
      ),
    );
  }
}
