import 'package:flutter/material.dart';

class ZoomControlWidget extends StatefulWidget {
  final Function(double) onZoomChanged;

  ZoomControlWidget({required this.onZoomChanged});

  @override
  _ZoomControlWidgetState createState() => _ZoomControlWidgetState();
}

class _ZoomControlWidgetState extends State<ZoomControlWidget> {
  double zoomLevel = 100.0; // Starting at 100%

  void _increaseZoom() {
    setState(() {
      zoomLevel = (zoomLevel + 10).clamp(50.0, 300.0); // Limit from 50% to 300%
    });
    widget.onZoomChanged(zoomLevel);
  }

  void _decreaseZoom() {
    setState(() {
      zoomLevel = (zoomLevel - 10).clamp(50.0, 300.0); // Limit from 50% to 300%
    });
    widget.onZoomChanged(zoomLevel);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.remove, color: Colors.white),
          onPressed: _decreaseZoom,
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child:
          Text(
            '${zoomLevel.toInt()}%',
            style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        IconButton(
          icon: Icon(Icons.add, color: Colors.white),
          onPressed: _increaseZoom,
        ),
      ],
    );
  }
}
