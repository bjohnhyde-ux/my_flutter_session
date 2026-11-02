import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10),
children:[
  CreateContainer(getColor: Colors.green, getHeight: 100,),
  CreateContainer(getColor: Colors.black, getHeight: 150,),
  CreateContainer(getColor: Colors.white, getHeight: 200,),
  CreateContainer(getColor: Colors.deepOrange, getHeight: 250,),
  CreateContainer(getColor: Colors.amber, getHeight: 300,),
  CreateContainer(getColor: Colors.blue, getHeight: 350,),
  CreateContainer(getColor: Colors.red, getHeight: 400,),
  CreateContainer(getColor: Colors.pink, getHeight: 450,),
  CreateContainer(getColor: Colors.purple, getHeight: 500,),
  CreateContainer(getColor: Colors.yellow, getHeight: 550,),
  CreateContainer(getColor: Colors.brown, getHeight: 600,),
  CreateContainer(getColor: Colors.grey, getHeight: 650,),

]
    )

    );
  }
}

class CreateContainer extends StatelessWidget {
  CreateContainer ({required this.getColor, this.getHeight = 100, super.key});



Color getColor;
double getHeight;

  @override

  Widget build(BuildContext context) {
    return Container(
      color: getColor,
      height: getHeight,
    );
  }
}
