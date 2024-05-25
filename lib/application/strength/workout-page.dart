import 'package:fitness_app/application/info.dart';
import 'package:fitness_app/application/menu.dart';
import 'package:fitness_app/model/Workout.dart';
import 'package:flutter/material.dart';

class WorkoutPage extends StatefulWidget {
  final List<Workout> workouts;
  const WorkoutPage({Key? key, required this.workouts}) : super(key: key);

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  int? selectedIndex;

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
                "Workouts",
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
          color: Color(0xFF121212)
        ),
        child: ListView.builder(
          itemCount: widget.workouts.length,
          itemBuilder: (context, workoutIndex) {
            final workout = widget.workouts[workoutIndex];
            return ExpansionTile(
              title: Text(
                workout.dayOfWeek,
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              children: workout.exercise!.map((exercise) {
                return ListTile(
                  title: Text(
                    exercise.name,
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  subtitle: Text(
                    'Sets: ${exercise.sets}, Reps: ${exercise.reps}, ${exercise.intensity}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      selectedIndex = workoutIndex;
                    });
                  },
                  selected: selectedIndex == workoutIndex,
                  selectedTileColor: Colors.green,
                );
              }).toList(),
            );
          },
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
}
