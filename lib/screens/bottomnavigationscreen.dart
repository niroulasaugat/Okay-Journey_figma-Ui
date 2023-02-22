import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'taskscreen.dart';
import 'profilescreen.dart';
import 'statuscreen.dart';




class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int _currentIndex = 0;
  final tabs = const[
    HomeScreen(),
    TaskScreen(),
    StatusScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedFontSize: 16,
        unselectedFontSize:12,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        selectedItemColor: Colors.white,
        
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home', ),
           BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Task', ),
            BottomNavigationBarItem(icon: Icon(Icons.circle), label: 'Status', ),
             BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile', ),
        ],
        onTap: ((value) {
          setState(() {
          _currentIndex = value;
          });
          
        }),
        
        ),
    );
  }
}