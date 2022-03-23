import 'package:flutter/material.dart';

class BlurRadius extends StatefulWidget {
  const BlurRadius({Key? key}) : super(key: key);

  @override
  _BlurRadiusState createState() => _BlurRadiusState();
}

class _BlurRadiusState extends State<BlurRadius> {
  double _blurRadius = 0.0;
  double _spreadRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    double widgetSize = 200;
    double fontSize = 24.0;
    String _blur = _blurRadius.toStringAsFixed(1);
    String _spread = _spreadRadius.toStringAsFixed(1);

    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blueAccent,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: const Offset(10, 10),
                  blurRadius: _blurRadius,
                  spreadRadius: _spreadRadius,
                ),
              ],
            ),
            width: widgetSize,
            height: widgetSize,
          ),
          const SizedBox(height: 100.0),
          Center(
              child: Text('blurRadius : $_blur',
                  style: TextStyle(fontSize: fontSize))),
          Slider(
            value: _blurRadius,
            min: 0,
            max: 50,
            onChanged: (newValue) {
              setState(() {
                _blurRadius = newValue;
              });
            },
          ),
          const SizedBox(height: 24.0),
          Center(
            child: Text("spreadRadius : $_spread",
                style: TextStyle(fontSize: fontSize)),
          ),
          Slider(
            value: _spreadRadius,
            min: 0,
            max: 50,
            onChanged: (newValue) {
              setState(() {
                _spreadRadius = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
