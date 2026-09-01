import 'package:flutter/material.dart';
import 'package:movie_app/core/resources/app_Images.dart';
import 'package:movie_app/core/resources/app_colors.dart';
import 'package:movie_app/core/resources/app_icons.dart';
import 'package:movie_app/core/localization/app_localizations.dart';
import 'package:movie_app/core/routes/AppRoutes.dart';

import '../../../main.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isPasswordHidden = true;
  bool isEnglish = true;

  @override
  Widget build(BuildContext context) {
    var loc = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Image.asset(
                  AppImages.logo2,
                  width: 121,
                  height: 118,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 69),
                TextField(
                  style: const TextStyle(color: AppColors.white),
                  cursorColor: AppColors.yellow,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        AppIcons.mail,
                        width: 24,
                        height: 24,
                        color: AppColors.white,
                      ),
                    ),
                    hintText: loc.email,
                    hintStyle: const TextStyle(color: AppColors.white),
                    filled: true,
                    fillColor: AppColors.dgrey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  obscureText: isPasswordHidden,
                  style: const TextStyle(color: AppColors.white),
                  cursorColor: AppColors.yellow,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        AppIcons.lock,
                        width: 24,
                        height: 24,
                        color: AppColors.white,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordHidden
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: AppColors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          isPasswordHidden = !isPasswordHidden;
                        });
                      },
                    ),
                    hintText: loc.password,
                    hintStyle: const TextStyle(color: AppColors.white),
                    filled: true,
                    fillColor: AppColors.dgrey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      loc.forgetPassword,
                      style: const TextStyle(color: AppColors.yellow),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.updateProfile);
                    },
                    child: Text(
                      loc.login,
                      style: const TextStyle(
                        color: AppColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      loc.dontHaveAccount,
                      style: const TextStyle(color: AppColors.white),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        loc.createOne,
                        style: const TextStyle(
                          color: AppColors.yellow,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Divider(color: AppColors.yellow, thickness: 0.8),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          loc.or,
                          style: const TextStyle(
                            color: AppColors.yellow,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(color: AppColors.yellow, thickness: 0.8),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppIcons.google, width: 28, height: 28),
                        const SizedBox(width: 8),
                        Text(
                          loc.loginWithGoogle,
                          style: const TextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isEnglish = !isEnglish;
                    });
                    appLocale.value = isEnglish
                        ? const Locale('en')
                        : const Locale('ar');
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.dgrey,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColors.yellow, width: 1.5),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(AppIcons.en, width: 20, height: 20),
                            Image.asset(AppIcons.arabic, width: 20, height: 20),
                          ],
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 200),
                          left: isEnglish ? 4 : 54,
                          child: Container(
                            width: 38,
                            height: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.black.withOpacity(0.4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
