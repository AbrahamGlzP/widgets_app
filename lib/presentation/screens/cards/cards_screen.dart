import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  static const String pageName = "cards_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('CardsScreen')));
  }
}
