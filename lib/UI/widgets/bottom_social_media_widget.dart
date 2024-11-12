import 'package:flutter/material.dart';
import 'package:liber/UI/colors/colors.dart';
import 'package:liber/UI/component/contact_phone_email.dart';
import 'package:liber/UI/component/payment_accepts_component.dart';

import '../component/contact_link_component.dart';

class  BottomSocialMediaWidget extends StatelessWidget {
  const  BottomSocialMediaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 45),

      width: double.infinity,
      color: AppColors.grayDark,
      child: const Wrap(children: [
        ContactLinkComponent(),
        ContactPhoneEmail(),
        PaymentAcceptsComponent()
      ],),

    );
  }
}
