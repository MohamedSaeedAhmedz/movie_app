import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:movie_app/core/resources/app_theme.dart';
import 'package:movie_app/features/login/presentation/login_view.dart';
import 'package:movie_app/features/onboarding/presentation/onboarding_view.dart';
import 'package:movie_app/features/splash/presentation/splash_view.dart';
import 'package:movie_app/features/update_profile/presentation/update_profile.dart';
import 'core/localization/app_localizations.dart';
import 'core/routes/AppRoutes.dart';

ValueNotifier<Locale> appLocale = ValueNotifier(const Locale('en'));

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
      valueListenable: appLocale,
      builder: (context, locale, child) {
        return MaterialApp(
          theme: AppTheme.appTheme,
          debugShowCheckedModeBanner: false,
          title: 'Movie App',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('en'), Locale('ar')],
          locale: locale,
          builder: (context, child) {
            return Directionality(
              textDirection: TextDirection.ltr,
              child: child!,
            );
          },
          initialRoute: AppRoutes.splash,
          routes: {
            AppRoutes.splash: (context) => const SplashView(),
            AppRoutes.onboarding: (context) => const OnboardingView(),
            AppRoutes.login: (context) => const LoginView(),
            AppRoutes.updateProfile:(context) => const UpdateProfile()
          },
        );
      },
    );
  }
}
