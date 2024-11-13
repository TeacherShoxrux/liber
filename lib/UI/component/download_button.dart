import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(CupertinoIcons.down_arrow, size: 20, color: Colors.black),
      label: Text(
        'Download',
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
          ),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 15, vertical: 15)),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          textStyle: MaterialStateProperty.all(TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white))),
    );
  }
}
