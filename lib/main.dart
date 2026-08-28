import 'package:flutter/material.dart';
import 'package:movie_app/features/onboarding/presentation/onboarding_view.dart';
import 'features/splash/presentation/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
