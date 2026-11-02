
import 'package:flutter/material.dart';

class MyDesign extends StatelessWidget {
  const MyDesign({super.key, required this.mobileScreen, required this.desktopScreen});

  final mobileScreen;
  final desktopScreen;

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(builder: (context, constraints)
    {
      if(constraints.maxWidth > 600)
      {
        return desktopScreen;
      }
      else
      {
        return mobileScreen;
      }

    });
  }
}
