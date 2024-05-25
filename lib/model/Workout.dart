import 'package:fitness_app/model/Exercise.dart';

class Workout {
  final String name;
  final String dayOfWeek;
  final List<Exercise>? exercise;

  Workout({
    required this.name,
    required this.dayOfWeek,
    required this.exercise,
  });

  static List<Workout> weekOne() {
    return [
      Workout(
        name: "Week One",
        dayOfWeek: "Monday",
        exercise: [
          Exercise(name: 'Squat', intensity: 'Medium 1 - 75-85%', sets: '4', reps: '3'),
          Exercise(name: 'Press', intensity: 'Hard 1 - 90-100%', sets: '3', reps: '1'),
        ],
      ),
      Workout(
        name: "Week One",
        dayOfWeek: "Wednesday",
        exercise: [
          Exercise(name: 'Press', intensity: 'Medium 1 - 75-85%', sets: '4', reps: '3'),
          Exercise(name: 'Deadlift', intensity: 'Light 1 - 60-65%', sets: '5', reps: '5'),
        ],
      ),
      Workout(
        name: "Week One",
        dayOfWeek: "Friday",
        exercise: [
          Exercise(name: 'Squat', intensity: 'Hard 1 - 90-100%', sets: '3', reps: '1'),
          Exercise(name: 'Press', intensity: 'Light 1 - 60-65%', sets: '5', reps: '5'),
        ],
      ),
    ];
  }

  static List<Workout> weekTwo() {
    return [
      Workout(
        name: "Week Two",
        dayOfWeek: "Monday",
        exercise: [
          Exercise(name: 'Press', intensity: 'Hard 2 - 100-110%', sets: '3', reps: '1'),
          Exercise(name: 'Deadlift', intensity: 'Medium 1 - 75-85%', sets: '4', reps: '3'),
        ],
      ),
      Workout(
        name: "Week Two",
        dayOfWeek: "Wednesday",
        exercise: [
          Exercise(name: 'Squat', intensity: 'Light 1 - 60-65%', sets: '5', reps: '5'),
          Exercise(name: 'Press', intensity: 'Medium 2 - 85-90%', sets: '4', reps: '2'),
        ],
      ),
      Workout(
        name: "Week Two",
        dayOfWeek: "Friday",
        exercise: [
          Exercise(name: 'Press', intensity: 'Medium 2 - 85-90%', sets: '4', reps: '2'),
          Exercise(name: 'Deadlift', intensity: 'Hard 1 - 90-100%', sets: '3', reps: '1'),
        ],
      ),
    ];
  }

  static List<Workout> weekThree() {
    return [
      Workout(
        name: "Week Three",
        dayOfWeek: "Monday",
        exercise: [
          Exercise(name: 'Squat', intensity: 'Medium 2 - 85-90%', sets: '4', reps: '2'),
          Exercise(name: 'Press', intensity: 'Hard 1 - 90-100%', sets: '3', reps: '1'),
        ],
      ),
      Workout(
        name: "Week Three",
        dayOfWeek: "Wednesday",
        exercise: [
          Exercise(name: 'Press', intensity: 'Medium 1 - 75-85%', sets: '5', reps: '5'),
          Exercise(name: 'Deadlift', intensity: 'Light 2 - 65-70%', sets: '5', reps: '4'),
        ],
      ),
      Workout(
        name: "Week Three",
        dayOfWeek: "Friday",
        exercise: [
          Exercise(name: 'Squat', intensity: 'Hard 2 - 100-110%', sets: '3', reps: '1'),
          Exercise(name: 'Deadlift', intensity: 'Light 1 - 60-65%', sets: '5', reps: '5'),
        ],
      ),
    ];
  }

  static List<Workout> weekFour() {
    return [
      Workout(
        name: "Week Four",
        dayOfWeek: "Monday",
        exercise: [
          Exercise(name: 'Press', intensity: 'Hard 2 - 100-110%', sets: '3', reps: '1'),
          Exercise(name: 'Deadlift', intensity: 'Medium 2 - 85-90%', sets: '4', reps: '2'),
        ],
      ),
      Workout(
        name: "Week Four",
        dayOfWeek: "Wednesday",
        exercise: [
          Exercise(name: 'Squat', intensity: 'Light 2 - 65-70%', sets: '5', reps: '4'),
          Exercise(name: 'Press', intensity: 'Medium 2 - 85-90%', sets: '4', reps: '2'),
        ],
      ),
      Workout(
        name: "Week Four",
        dayOfWeek: "Friday",
        exercise: [
          Exercise(name: 'Squat', intensity: 'Medium 2 - 85-90%', sets: '4', reps: '2'),
          Exercise(name: 'Deadlift', intensity: 'Hard 2 - 100-110%', sets: '3', reps: '1'),
        ],
      ),
    ];
  }
}
