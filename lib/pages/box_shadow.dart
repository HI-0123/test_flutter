import 'package:flutter/material.dart';

class BoxShadowPage extends StatefulWidget {
  const BoxShadowPage({Key? key}) : super(key: key);

  @override
  _BoxShadowPageState createState() => _BoxShadowPageState();
}

class _BoxShadowPageState extends State<BoxShadowPage> {
  final _image = const NetworkImage('https://placebear.com/300/300');

  double _opacity = 1.0;
  double _xOffset = 0.0;
  double _yOffset = 0.0;
  double _blurRadius = 0.0;
  double _spreadRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 100.0),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF0099EE),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, _opacity),
                  offset: Offset(_xOffset, _yOffset),
                  blurRadius: _blurRadius,
                  spreadRadius: _spreadRadius,
                )
              ],
            ),
            child: Image(
              image: _image,
              width: 100,
              height: 100,
            ),
          ),
          const SizedBox(height: 124.0),
          const Text("opacity"),
          Slider(
            value: _opacity,
            min: 0.0,
            max: 1.0,
            onChanged: (newValue) => {setState(() => _opacity = newValue)},
          ),
          const Text("xOffset"),
          Slider(
            value: _xOffset,
            min: -100,
            max: 100,
            onChanged: (newValue) => {setState(() => _xOffset = newValue)},
          ),
          const Text("yOffset"),
          Slider(
            value: _yOffset,
            min: -100,
            max: 100,
            onChanged: (newValue) => {setState(() => _yOffset = newValue)},
          ),
          const Text("blurRadius"),
          Slider(
            value: _blurRadius,
            min: 0,
            max: 100,
            onChanged: (newValue) => {setState(() => _blurRadius = newValue)},
          ),
          const Text("spreadRadius"),
          Slider(
            value: _spreadRadius,
            min: 0,
            max: 100,
            onChanged: (newValue) => {setState(() => _spreadRadius = newValue)},
          )
        ],
      ),
    );
  }
}
