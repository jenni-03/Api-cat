import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  static const String name = 'detail_screen';

  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail screen'),
      ),
    );
  }
}
