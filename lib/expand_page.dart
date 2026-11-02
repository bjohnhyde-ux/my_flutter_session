import 'package:flutter/material.dart';

class ExpandPage extends StatelessWidget {
  const ExpandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.limeAccent,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,

            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amberAccent,
              child: Center(
                child: Text("Hello World",

                style: TextStyle(fontSize: 100),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.deepOrange,

            ),
          ),
        ],
      ),
    );
  }
}
