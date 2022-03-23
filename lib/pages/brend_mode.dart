import 'package:flutter/material.dart';

class BlendModePage extends StatelessWidget {
  const BlendModePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/test_image.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/test_image.jpg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.grey, BlendMode.saturation),
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ],
      ),
    );
  }
}
