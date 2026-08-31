import 'package:flutter/material.dart';
import 'package:movie_app/core/resources/app_images.dart';
import '../../../core/resources/app_colors.dart';
import '../../../core/routes/AppRoutes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;

      Navigator.pushReplacementNamed(context, AppRoutes.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Center(
                child: Image.asset(
                  MImages.moviesLogo,
                  width: 350,
                  height: 350,
                  fit: BoxFit.contain,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Image.asset(
                  MImages.branding,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
