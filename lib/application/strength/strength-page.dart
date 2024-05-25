import 'dart:math';

import 'package:fitness_app/application/info.dart';
import 'package:fitness_app/application/menu.dart';
import 'package:fitness_app/application/strength/workout-page.dart';
import 'package:fitness_app/model/Workout.dart';
import 'package:flutter/material.dart';

class StrengthPage extends StatefulWidget {
  const StrengthPage({Key? key}) : super(key: key);

  @override
  _StrengthPageState createState() => _StrengthPageState();
}

class _StrengthPageState extends State<StrengthPage> {
  final List<String> motivationalTexts = [
    "Embrace Your Strength!",
    "Unleash Your Power!",
    "Forge Your Glory!",
    "Embrace the Pain!",
    "Awaken the Titan!",
    "Defy Gravity!",
    "Pain is Temporary!"
  ];

  late String selectedMotivationalText;

  @override
  void initState() {
    super.initState();
    selectedMotivationalText = _getRandomMotivationalText();
  }

  String _getRandomMotivationalText() {
    final Random random = Random();
    return motivationalTexts[random.nextInt(motivationalTexts.length)];
  }

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
            child: Center(
              child: Text(
                selectedMotivationalText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF121212), // Dark mode background matching appBar
        ),
        child: ListView(
          children: [
            _buildWeekContainer("Week One", Workout.weekOne()),
            _buildWeekContainer("Week Two", Workout.weekTwo()),
            _buildWeekContainer("Week Three", Workout.weekThree()),
            _buildWeekContainer("Week Four", Workout.weekFour()),
          ],
        ),
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

  Widget _buildWeekContainer(String title, List<Workout> workouts) {
    return Container(
      height: 80,
      color: const Color(0xFF1F1B24),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 18), // Bigger text
        ),
        onTap: () {
          _gotToWorkout(context, workouts);
        },
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
