import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {

  static const String name = 'landing_screen';

  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('landing screen'),
      ),
    );
  }
}
