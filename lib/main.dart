import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingseventgermany/firebase_options.dart';
import 'package:kingseventgermany/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:kingseventgermany/src/repository/authentication_repository/authentication_repository.dart';
import 'package:kingseventgermany/src/utils/theme/theme.dart';

void main() async {
  //Whenever the application is being launched
  WidgetsFlutterBinding.ensureInitialized();
  //Firebase will be initialized
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).
    // Then authentication repository will be initialized, 
    //onReady method will be executed
    then((value) => Get.put(AuthenticationRepository())); 
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