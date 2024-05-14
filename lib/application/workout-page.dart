import 'package:fitness_app/model/Workout.dart';
import 'package:flutter/material.dart';

class WorkoutPage extends StatefulWidget {
  final Workout workout;
  const WorkoutPage({Key? key, required this.workout}) : super(key: key);

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.workout.name),
        backgroundColor: Colors.purpleAccent,
      ),
      backgroundColor: Colors.purple[800],
      body: ListView.builder(
        itemCount: widget.workout.excersise?.length,
        itemBuilder: (context, index) {
          final exercise = widget.workout.excersise![index];
          return ListTile(
            title: Text(
              exercise.name,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Weight: ${exercise.weight},'
              'Reps: ${exercise.reps},'
              'Sets: ${exercise.sets}',
              style: const TextStyle(color: Colors.white),
            ),
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            selected: selectedIndex == index,
            selectedTileColor: Colors.green,
          );
        },
      ),
    );
  }
}
