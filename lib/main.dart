import 'package:flutter/material.dart';

void main() {
  runApp(const PetApp());
}

class PetApp extends StatefulWidget {
  const PetApp({Key? key}) : super(key: key);

  @override
  _PetAppState createState() => _PetAppState();
}

class _PetAppState extends State<PetApp> {
  final List<String> petImages = [
    'assets/pet1.jpeg',
    'assets/pet2.jpeg',
    'assets/pet3.jpeg',
    'assets/pet4.jpeg',
    'assets/pet5.jpeg',
  ];

  final List<String> petNames = ["Buddy", "Charlie", "Max", "Luna", "Milo"];

  final List<Color> bgColors = [
    Colors.blue[100]!,
    Colors.green[100]!,
    Colors.yellow[100]!,
    Colors.pink[100]!,
    Colors.purple[100]!
  ];

  int _currentImageIndex = 0;

  void _changePetImage() {
    setState(() {
      _currentImageIndex = (_currentImageIndex + 1) % petImages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColors[_currentImageIndex], // Background color changes
        appBar: AppBar(title: const Text('Digital Pet')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(petImages[_currentImageIndex], height: 200),
              const SizedBox(height: 10),
              Text(
                petNames[_currentImageIndex],
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: _changePetImage,
                child: const Text('Change Pet'),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}