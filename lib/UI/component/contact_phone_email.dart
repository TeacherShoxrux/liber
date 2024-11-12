import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactPhoneEmail extends StatelessWidget {
  const ContactPhoneEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Боғланиш",
            style: TextStyle(color: Colors.white),
          ),
          Row(
            children: [
              Padding(
                  padding:
                      EdgeInsets.only(top: 10.0, bottom: 10, right: 10),
                  child: Text(
                    "+998 90 253 77 53",
                    style: TextStyle(
                      fontSize: 13,
                        color: Colors.white, fontWeight: FontWeight.w300),
                  )),
              Padding(
                  padding:
                      EdgeInsets.only(top: 10.0, bottom: 10, right: 10),
                  child: Text(
                    "support@liber.uz",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white, fontWeight: FontWeight.w300),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
