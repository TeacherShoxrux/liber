import 'package:flutter/material.dart';

import '../colors/colors.dart';

class CheckFilterItem extends StatefulWidget {
  final Function(bool c) onChecked;
  const CheckFilterItem({super.key, required this.onChecked});

  @override
  State<CheckFilterItem> createState() => _CheckFilterItemState();
}

class _CheckFilterItemState extends State<CheckFilterItem> {
  var check=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        children: [
          Checkbox(
            checkColor: AppColors.mainColor,
              hoverColor: Colors.black,
              activeColor: Colors.white,
              overlayColor: WidgetStateProperty.all(Colors.black12),

              value: check,
              onChanged: (e)=>
              setState(() {widget.onChecked(check= !check);})
          ),
           Flexible(child: Text("Жахон a sdfasdf asdf sadfas dfasdfsadfsadfasdf sdfадабиёти",maxLines:1,overflow:TextOverflow.ellipsis,style: TextStyle(color:check? AppColors.mainColor:AppColors.grayDark,fontWeight: FontWeight.w700),))
        ],
      ),
    );
  }
}
