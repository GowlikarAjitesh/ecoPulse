import 'dart:async';
import 'package:flutter/material.dart';

import '../new_layout.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});
  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 60), () {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // FlutterLogo(size: 100),
            Icon(Icons.eco, size: 150),
            SizedBox(height: 20),
            // CircularProgressIndicator(),
            Text('Clean Green Future', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
