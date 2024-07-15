import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingseventgermany/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:kingseventgermany/src/utils/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp
    (
      theme: AppThemeUtility.lightTheme,
      darkTheme: AppThemeUtility.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(microseconds: 500),
      home: const WelcomeScreen(),
    );
  }
}