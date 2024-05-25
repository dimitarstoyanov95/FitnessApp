import 'package:fitness_app/application/info.dart';
import 'package:fitness_app/application/menu.dart';
import 'package:fitness_app/application/strength/workout-page.dart';
import 'package:fitness_app/model/Workout.dart';
import 'package:flutter/material.dart';

class StrengthPage extends StatelessWidget {
  const StrengthPage({super.key});

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
                "Strength Program",
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
          color: Color(0xFF121212), // Dark mode background matching appBar
        ),
        child: ListView(children: [
          ListTile(
            title: const Text(
              "1 - Week One",
              style: TextStyle(color: Colors.white, fontSize: 30), // Bigger text
            ),
            onTap: () {
              _gotToWorkout(context, Workout.weekOne());
            },
          ),
          ListTile(
            title: const Text(
              "2 - Week Two",
              style: TextStyle(color: Colors.white, fontSize: 30), // Bigger text
            ),
            onTap: () {
              _gotToWorkout(context, Workout.weekTwo());
            },
          ),
          ListTile(
            title: const Text(
              "3 - Week Three",
              style: TextStyle(color: Colors.white, fontSize: 30), // Bigger text
            ),
            onTap: () {
              _gotToWorkout(context, Workout.weekThree());
            },
          ),
          ListTile(
            title: const Text(
              "4 - Week Four",
              style: TextStyle(color: Colors.white, fontSize: 30), // Bigger text
            ),
            onTap: () {
              _gotToWorkout(context, Workout.weekFour());
            },
          )
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

  void _gotToWorkout(BuildContext context, List<Workout> workouts) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WorkoutPage(workouts: workouts)),
    );
  }
}
