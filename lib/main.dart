import 'package:animated_widgets/widgets/rotation_animated.dart';
import 'package:animated_widgets/widgets/scale_animated.dart';
import 'package:animated_widgets/widgets/shake_animated_widget.dart';
import 'package:flutter/material.dart';

var enabled = true;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedCharcoal();
  }
}

class AnimatedCharcoal extends StatefulWidget {
  CharcoalState createState() => CharcoalState();
}

class CharcoalState extends State<AnimatedCharcoal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              title: Center(
                child: Text("I Am Poor", style: TextStyle(color: Colors.white)),
              ),
              backgroundColor: Colors.blue,
            ),
            body: Center(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  enabled = !enabled;
                });
              },
              child: ScaleAnimatedWidget.tween(
                  enabled: enabled,
                  duration: Duration(milliseconds: 600),
                  scaleDisabled: 0.5,
                  scaleEnabled: 1,

                  //your widget
                  child: Image.asset("images/coal.png")),
            ))));
  }
}
