import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 5000),
              curve: Curves.fastLinearToSlowEaseIn,
              color: selected ? Colors.blueAccent : Colors.grey,
              width: selected ? 100 : 200,
              height: selected ? 100 : 200,
            ),
            const SizedBox(height: 16.0),
            FloatingActionButton(onPressed: () {
              setState(() {
                selected = !selected;
              });
            })
          ],
        ),
      ),
    );
  }
}
