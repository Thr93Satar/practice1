import 'package:flutter/material.dart';

import '../modules/archived_tasks/archived_tasks.dart';
import '../modules/done_tasks/done_tasks.dart';
import '../modules/new_tasks/new_tasks.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;

  List<Widget> screens = const [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];

  List<String?> screenTitles = [
    'New Tasks',
    'Done Tasks',
    'Archive Tasks',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenTitles[currentIndex]!),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu_rounded),label: 'Tasks'),
            BottomNavigationBarItem(icon: Icon(Icons.done_all_rounded),label: 'Done'),
            BottomNavigationBarItem(icon: Icon(Icons.archive_rounded),label: 'Archive'),
          ]
      ),
      body: screens[currentIndex],
    );
  }
}
