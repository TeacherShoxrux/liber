import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  final List<MenuItem> menuItems;

  MenuWidget({required this.menuItems});

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.menuItems.asMap().entries.map((entry) {
        int index = entry.key;
        MenuItem item = entry.value;

        return InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
            if (item.onTap != null) item.onTap!();
          },
          child: Container(
            color: selectedIndex == index ? Colors.blue.shade100 : Colors.transparent,
            child: ListTile(
              leading: Icon(item.icon, color: Colors.blue),
              title: Text(item.text, style: TextStyle(fontSize: 18)),
            ),
          ),
        );
      }).toList(),
    );
  }
}
class MenuItem {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;

  MenuItem({required this.icon, required this.text, this.onTap});
}