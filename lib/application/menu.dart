import 'package:fitness_app/application/workout-page.dart';
import 'package:fitness_app/model/Workout.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programs"),
        backgroundColor: Colors.purpleAccent,
        ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/Menu.png"),
            fit: BoxFit.fill),
        ),
        child: ListView(
          children: [
            ListTile(
              title: const Text("Powerlifting", style: TextStyle(color: Colors.white),),
              onTap: () {
                _gotToWorkout(context, Workout.powerlifting());
              },
            ),
            ListTile(
              title: const Text("Bodybuilding", style: TextStyle(color: Colors.white),),
              onTap: () {
                _gotToWorkout(context, Workout.bodybuilding());
              },
            ),
            ListTile(
              title: const Text("Crossfit", style: TextStyle(color: Colors.white),),
              onTap: () {
                _gotToWorkout(context, Workout.crossfit());
              },
            )
          ]
          ),
      ),
    );
  }

  void _gotToWorkout(BuildContext context, Workout workout) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WorkoutPage(workout: workout))
    );
   }
}