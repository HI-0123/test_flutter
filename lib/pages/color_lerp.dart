import 'package:flutter/material.dart';

class ColorLerp extends StatefulWidget {
  const ColorLerp({Key? key}) : super(key: key);

  @override
  _ColorLerpState createState() => _ColorLerpState();
}

class _ColorLerpState extends State<ColorLerp> {
  double t = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color.lerp(Colors.red, Colors.white, t),
            ),
            width: 250.0,
            height: 250.0,
          ),
          const SizedBox(height: 8.0),
          Slider(
              value: t,
              min: 0,
              max: 1,
              onChanged: (value) {
                t = value;
                setState(() {});
              }),
          Text(
            "t：${t.toStringAsFixed(1)}",
            style: const TextStyle(fontSize: 30.0),
          )
        ],
      ),
    );
  }
}
