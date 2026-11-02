import 'package:flutter/material.dart';

import 'expand_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.limeAccent,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.red,

            ),
          ),
          Flexible(
            child: Container(
              color: Colors.amberAccent,
              child: Center(
                child: Text("Hello World",

                style: TextStyle(fontSize: 100),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.deepOrange,

            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ExpandPage()));
    }, child: Text("Expand Page"),

    ),
        ],
      ),
    );
  }
}
