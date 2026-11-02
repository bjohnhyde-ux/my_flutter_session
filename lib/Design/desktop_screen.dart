import 'package:flutter/material.dart';

import '../list_view_builder.dart';
class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text("D E S K T O P"),
      ),
      body: Row(
        children: [
          // video space
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                //width: 800,
                color: Colors.black54,
              ),
            ),
          ),
          // space between video and suggestionSizedBox(width: 10),
          // suggestion space
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                //width: 400,
                color: Colors.white70,
                child: SquarePhotoListWidget(),
              ),
            ),
          ),
        ],
      )

      );
  }
}
