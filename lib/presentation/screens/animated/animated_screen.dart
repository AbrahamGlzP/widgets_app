import 'dart:math' show Random;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double widthValue = 100;
  double heightValue = 100;
  Color color = Colors.indigo;
  double borderRadius = 10.0;
  final colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.amber,
    Colors.orange,
    Colors.pink,
  ];

  final random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container')),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: widthValue,
          height: heightValue,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: SvgPicture.asset(
            'assets/images/flutter-logo.svg',
            width: 80,
            height: 80,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }

  void changeShape() {
    widthValue = random.nextInt(200) + 100;
    heightValue = random.nextInt(200) + 100;
    color = colors[random.nextInt(colors.length)];
    borderRadius = random.nextDouble() * 20;
    setState(() {});
  }
}
