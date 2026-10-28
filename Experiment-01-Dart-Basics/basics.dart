
void main() {
  String appName = 'FitTrack';
  int totalWorkouts = 5;
  double weeklyHours = 3.5;
  bool isActive = true;

  List<String> workouts = [
    'Push-ups',
    'Pull-ups',
    'Squats',
  ];

  print('Application: $appName');
  print('Total workouts: $totalWorkouts');
  print('Weekly hours: $weeklyHours');
  print('Active user: $isActive');

  print('\nWorkout list:');

  for (String workout in workouts) {
    print('- $workout');
  }

  print('\nExperiment 1 completed successfully.');
}
