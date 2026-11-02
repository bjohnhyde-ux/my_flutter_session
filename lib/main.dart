import 'package:first_project/Design/layout_builder.dart';
import 'package:first_project/Design/mobile_screen.dart';
import 'package:first_project/dismissable_item.dart';
import 'package:first_project/home_page.dart';
import 'package:first_project/list_view_builder.dart';
import 'package:first_project/media_query.dart';
import 'package:first_project/reorder_view.dart';
import 'package:flutter/material.dart';

import 'Design/desktop_screen.dart';
import 'grid_view.dart';
import 'list_view.dart';


void main()
{
  runApp(HiSkool());
}
class HiSkool extends StatelessWidget {
  const HiSkool({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDesign(mobileScreen: MobileScreen(),
        desktopScreen: DesktopScreen(),),
      //home: MyGridViewScreen(),
      //home: ListViewPage(),
      //home: ExpandPage(),
      //home: HomePage(),
    );
  }
}
