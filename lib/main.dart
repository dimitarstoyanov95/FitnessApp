import 'package:fitness_app/application/menu.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FitnessApp()
    );
  }
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Fitness App"),
        backgroundColor: Colors.purpleAccent,
        ),
      body: Container(
        decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/MainPage.png"),
                  fit: BoxFit.fill)),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => MenuPage())
                );
            }, 
            child: Text("Start Workout")
            ),
          ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color:  Colors.purple,
        child: Center(
          child: Text("App Ino", style: TextStyle(color: Colors.white)),
          ),
        ),
    );
  }
}
