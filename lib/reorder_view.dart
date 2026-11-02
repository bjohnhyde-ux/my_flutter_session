import 'package:flutter/material.dart';
class ReorderView extends StatefulWidget {
  const ReorderView({super.key});

  @override
  State<ReorderView> createState() => _ReorderViewState();
}
List <String> reorder_list = ["One", "Two", "Three", "Four", "Five"];



class _ReorderViewState extends State<ReorderView> {

  void updateList(int oldIndex, int newIndex)
  {
    setState(() {
      if(newIndex > oldIndex)
      {
        newIndex -= 1;
      }
      final item = reorder_list.removeAt(oldIndex);
      reorder_list.insert(newIndex, item);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ReorderableListView(
        children: [
          for (var item in reorder_list)
          ListTile(
            key: ValueKey(item),
            title: Text(item),
          ),
        ],
        onReorder: (int oldIndex, int newIndex)
        {
          updateList(oldIndex, newIndex);
        },
      ),

    );
  }
}
