import 'package:flutter/material.dart';


class MyMediaQueryScreen extends StatelessWidget {
  const MyMediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Width
            Text("Width : ${MediaQuery.of(context).size.width}"),

            //Height
            Text("Height :${MediaQuery.of(context).size.height}"),
            //AspectRatio
            Text("Aspect Ratio : ${MediaQuery.of(context).size.aspectRatio}"),
            //Orientation
            Text("Orientation :${MediaQuery.of(context).orientation}")
          ],
        ),
      )
    );
  }
}
