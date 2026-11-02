import 'package:flutter/material.dart';

class DismissableItem extends StatefulWidget {
  const DismissableItem({super.key});

  @override
  State<DismissableItem> createState() => _DismissableItemState();
}

final List<String> myTasks = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5"];
List archivedTasks = [];

class _DismissableItemState extends State<DismissableItem> {
  void archiveTask(String keyTask ) {
    setState(() {
      myTasks.remove(keyTask);
      archivedTasks.add(keyTask);
    });
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("$keyTask Archived")));
  }

  void deleteTask(String keyTask) {
    setState(() {
      myTasks.remove(keyTask);
    });
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("$keyTask Deleted")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: myTasks.isEmpty
          ? Center(child: Text("No Tasks"))
          : ListView.builder(
              itemCount: myTasks.length,
              itemBuilder: (context, index) {
                final keyTask = myTasks[index];

                return Dismissible(
                  key: ValueKey(keyTask),
                  direction: DismissDirection.horizontal,

                  background: Container(
                    color: Colors.green,
                    alignment: .centerLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.archive, color: Colors.white),
                  ),
                  secondaryBackground: Container(
                    color: Colors.red,
                    alignment: .centerRight,
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                  confirmDismiss: (direction) async {
                    if (direction == DismissDirection.startToEnd) {
                      archiveTask(keyTask);
                    } else {
                      return await showDialog<bool>(
                            context: context,
                            builder: (dialogContext) {
                              return AlertDialog(
                                title: const Text("Delete Task"),
                                content: const Text(
                                  "Are you sure you want to delete this task?",
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(dialogContext).pop(false);
                                    },
                                    child: const Text("No"),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(dialogContext).pop(true);
                                    },
                                    child: const Text("Yes"),
                                  ),
                                ],
                              );
                            },
                          ) ??
                          false;
                    }
                  },
                  onDismissed: (direction)
                  {
                    if (direction == DismissDirection.endToStart) {
                      deleteTask(keyTask);
                    }

                  },
                  child: Card(
                    child: ListTile(
                      title: Text(keyTask),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
