
import 'package:fitness_app/model/Exercise.dart';

class Workout {
  final String name;
  final List<Exercise>? excersise;

  Workout({
    required this.name,
    required this.excersise
    });

  static Workout powerlifting() {
    return Workout(
      name: "Powerlifting",
      excersise: [
        Exercise(name: 'Squats', weight: 'Barbell', reps: '5', sets: '5'),
        Exercise(name: 'Deadlifts', weight: 'Barbell', reps: '5', sets: '5'),
        Exercise(name: 'Bench Press', weight: 'Barbell', reps: '5', sets: '5'),
        Exercise(name: 'Pull-ups', weight: 'Bodyweight', reps: '8', sets: '4'),
      ],
    );
  }

  static Workout bodybuilding() {
    return Workout(
      name: 'Bodybuilding',
      excersise: [
        Exercise(name: 'Bicep Curls', weight: 'Dumbbells', reps: '10', sets: '4'),
        Exercise(name: 'Tricep Extensions', weight: 'Dumbbells', reps: '10', sets: '4'),
        Exercise(name: 'Shoulder Press', weight: 'Dumbbells', reps: '10', sets: '4'),
        Exercise(name: 'Leg Press', weight: 'Machine', reps: '12', sets: '4'),
      ],
    );
  }

  static Workout crossfit() {
    return Workout(
      name: 'Crossfit',
      excersise: [
        Exercise(name: 'Box Jumps', weight: 'Bodyweight', reps: '15', sets: '3'),
        Exercise(name: 'Kettlebell Swings', weight: 'Kettlebell', reps: '20', sets: '3'),
        Exercise(name: 'Burpees', weight: 'Bodyweight', reps: '10', sets: '5'),
        Exercise(name: 'Wall Balls', weight: 'Medicine Ball', reps: '15', sets: '3'),
      ],
    );
  }
}