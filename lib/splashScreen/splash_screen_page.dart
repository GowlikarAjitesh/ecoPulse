import 'dart:async';
import 'package:flutter/material.dart';

import '../new_layout.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});
  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with SingleTickerProviderStateMixin {
  late Animation colorAnimation;
  late AnimationController colorAnimationController;
  @override
  void initState() {
    super.initState();
    colorAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
      animationBehavior: AnimationBehavior.preserve,
    );
    colorAnimation = ColorTween(
      begin: Colors.green[100],
      end: Colors.green,
    ).animate(colorAnimationController);
    colorAnimationController.forward();
    Timer(const Duration(seconds: 15), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const NewLayout()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FlutterLogo(size: 100),
            AnimatedBuilder(
              animation: colorAnimation,
              builder:
                  (context, child) =>
                      Icon(Icons.eco, size: 150, color: colorAnimation.value),
            ),
            const SizedBox(height: 20),
            // CircularProgressIndicator(),
            const Text(
              'Clean Green Future',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
