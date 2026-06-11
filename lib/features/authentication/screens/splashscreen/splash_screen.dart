import 'dart:async';
import 'package:crunchies/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Image.asset('assets/logos/crunchies-logo.png', width: 300),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                'Copyright - 2026 Crunchies. All Rights Reserved', maxLines: 1,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        )
      ),
    );
  }
}