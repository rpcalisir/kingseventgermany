import 'package:flutter/material.dart';
import 'package:kingseventgermany/src/utils/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeUtility.lightTheme,
        darkTheme: AppThemeUtility.darkTheme,
        themeMode: ThemeMode.system,
        home: const AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("KINGS EVENT"), leading: Image.asset("assets/images/kings_event_logo.png"),),
      body: const Center(child: Text("BODY"),
      ),
    );
  }
} 