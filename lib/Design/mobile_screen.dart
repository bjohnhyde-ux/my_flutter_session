import 'package:flutter/material.dart';

import '../list_view_builder.dart';



class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("M O B I L E"),
      ),
      body:
          //-----------------
      Column(
        children: [
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  //width: 500,
                  height: 300,
                  color: Colors.black54,
                  child: Center(child: Text("place for video player",style: TextStyle(fontSize: 20),)),
                ),

              ),
          ),
          SquarePhotoListWidget(),
        ],
      ),
      //----------------------

      );
  }
}
