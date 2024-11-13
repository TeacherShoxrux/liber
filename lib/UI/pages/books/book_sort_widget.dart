import 'package:flutter/material.dart';
import 'package:liber/UI/colors/colors.dart';
class BookSortWidget extends StatefulWidget {
  final VoidCallback? onTapList;
  final VoidCallback? onTapGrid;
  const BookSortWidget({super.key, this.onTapList, this.onTapGrid});

  @override
  State<BookSortWidget> createState() => _BookSortWidgetState();
}

class _BookSortWidgetState extends State<BookSortWidget> {
  var blk=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.only(top: 15,bottom: 15,left: 15),

      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(14)
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Китоблар",style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 7,bottom:7,right: 15.0),
                child: IconButton(onPressed: (){
                  blk=false;
                  if(widget.onTapGrid!=null)widget.onTapList!();
                }, icon: Icon(Icons.list,color: blk? AppColors.grayDark:AppColors.mainColor,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7,bottom:7,right: 15.0),
                child: IconButton(onPressed: (){setState(() {
                  blk=true;
                  if(widget.onTapGrid!=null)widget.onTapGrid!();
                });}, icon: Icon(Icons.apps,color: !blk? AppColors.grayDark:AppColors.mainColor,)),
              ),
            ],
          )
          // SvgPicture.asset("assets/image/menu_list.svg",colorFilter: ColorFilter.mode(Colors.blue, BlendMode.hardLight)),
          // SvgPicture.asset("assets/image/menu_grid.svg"),
        ],
      ),
    );
  }
}
