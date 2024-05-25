import 'package:fitness_app/application/info.dart';
import 'package:fitness_app/application/strength/strength-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key});

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
              color: Color(0xFF121212),
            ),
            child: const Center(
              child: Text(
                "Welcome",
                style: TextStyle(
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
          color: Color(0xFF121212),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Program Catalog",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 150, // Adjust height as needed
                    color: const Color(0xFF1F1B24),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Stack(
                      children: [
                        ListTile(
                          title: const Text(
                            "Strength",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          onTap: () {
                            _gotToFitnessProgram(context, "Strength");
                          },
                        ),
                        const Positioned(
                          bottom: 10,
                          right: 10,
                          child: Icon(
                            Icons.fitness_center, // You can change this to any training-related icon
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 16.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                                itemSize: 20.0, // Smaller size for the stars
                                ignoreGestures:
                                true, // To make the stars non-interactive
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Add more containers for additional programs if needed
                ],
              ),
            ),
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
                  MaterialPageRoute(builder: (context) => const MenuPage()),
                );
                break;
              case 1:
                // Search action
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InfoBar()),
                );
                break;
            }
          },
        ),
      ),
    );
  }

  void _gotToFitnessProgram(BuildContext context, String workout) {
    if (workout == "Strength") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const StrengthPage()),
      );
    }
  }
}
