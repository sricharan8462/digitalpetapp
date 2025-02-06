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
        appBar: AppBar(title: const Text('Digital Pet')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(petImages[_currentImageIndex], height: 200),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _changePetImage,
                child: const Text('Change Pet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
