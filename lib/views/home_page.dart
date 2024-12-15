import 'package:flutter/material.dart';
import 'package:lawyer_finder/views/appoinments.dart';
import 'package:lawyer_finder/views/home.dart';
import 'package:lawyer_finder/views/profile.dart';
import 'package:lawyer_finder/views/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    Home(),
    Search(),
    Appoinments(),
    Profile(),
  ];

  int _selectedIndex = 0;

  void changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeIndex,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.blueGrey, // Set background color for the navbar
        selectedItemColor: Colors.grey[800], // Color for selected item
        unselectedItemColor: Colors.black54, // Color for unselected items
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range ), label: "Appointments"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
