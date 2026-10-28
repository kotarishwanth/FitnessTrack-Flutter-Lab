
import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetsLayoutsExperiment());
}

class WidgetsLayoutsExperiment extends StatelessWidget {
  const WidgetsLayoutsExperiment({super.key});

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFFB7F397);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF101510),
        colorScheme: ColorScheme.fromSeed(
          seedColor: green,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Experiment 2: Widgets')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'FitTrack',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: green,
                ),
              ),
              const SizedBox(height: 8),
              const Text('Explore Flutter widgets and layouts'),
              const SizedBox(height: 20),

              // Container widget
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF263526),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.fitness_center, size: 36, color: green),
                    SizedBox(height: 12),
                    Text(
                      'Strength Training',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('30-minute workout'),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Row and Expanded widgets
              const Text(
                'Your workouts',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: _workoutCard('Cardio', Icons.directions_run),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _workoutCard('Flexibility', Icons.self_improvement),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Stack and Positioned widgets
              Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF303128),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      right: 15,
                      top: 15,
                      child: Icon(Icons.bolt, size: 60, color: green),
                    ),
                    const Positioned(
                      left: 18,
                      bottom: 18,
                      child: Text(
                        'Keep moving!',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Image widget
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  'https://images.unsplash.com/photo-1534438327276-14e5300c3a48'
                  '?auto=format&fit=crop&w=900&q=80',
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 180,
                      color: const Color(0xFF263526),
                      child: const Center(
                        child: Icon(
                          Icons.image_not_supported,
                          size: 48,
                          color: green,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _workoutCard(String title, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF1D241D),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: const Color(0xFFB7F397), size: 30),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
