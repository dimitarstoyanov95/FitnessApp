import 'package:fitness_app/application/info.dart';
import 'package:fitness_app/application/strength/strength-page.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF121212), // Dark mode background
            ),
            child: const Center(
              child: Text(
                "Programs",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF121212),
        ),
        child: ListView(children: [
          ListTile(
            title: const Text(
              "Strength",
              style:
                  TextStyle(color: Colors.white, fontSize: 30), // Bigger text
            ),
            onTap: () {
              _gotToFitnessProgram(context, "Strength");
            },
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF1F1B24), // Secondary dark color
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_vert, color: Colors.white),
              label: '',
            ),
          ],
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
                break;
              case 1:
                // Search action
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoBar()),
                );
                break;
            }
          },
        ),
      ),
    );
  }

  void _gotToFitnessProgram(BuildContext context, String workout) {
    if(workout == "Strength") {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StrengthPage()),
    );
    }
  }
}
