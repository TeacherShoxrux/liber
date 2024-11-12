import 'package:flutter/material.dart';
import 'package:liber/UI/colors/colors.dart';
import 'package:liber/UI/component/bottom_infor_item.dart';

import '../component/bottom_infor_mobile_app.dart';

class BottomInformationWidget extends StatelessWidget {
  const BottomInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 45),
      decoration: BoxDecoration(
        color: AppColors.bannerBGColor,
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          BottomInforItem(
            title: 'Платформа хақида',
            text1: 'Фойдаланиш шартлари',
            text2: 'Liber ўзи нима',
            text3: 'Ёрдам',
          ),
          BottomInforItem(
            title: 'Обуна хақида',
            text1: 'Обуна бўлиш',
            text2: 'Қандай тўлаш',
            text3: '-',
          ),
          BottomInforItem(
            title: 'Китоблар',
            text1: 'Аудио китоблар',
            text2: 'Электрон китоблар',
            text3: 'Китоблар',
          ),
          BottomInforMobileApp(title: 'Мобил илова',)
        ],
      ),
    );
  }
}
