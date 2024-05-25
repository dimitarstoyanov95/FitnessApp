class Exercise {
  final String name;
  final String intensity;
  final String reps;
  final String sets;
  bool isCompleted;

  Exercise({
    required this.name,
    required this.intensity,
    required this.reps,
    required this.sets,
    this.isCompleted = false,
  });
}
