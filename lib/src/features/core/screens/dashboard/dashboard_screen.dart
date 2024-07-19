import 'package:flutter/material.dart';
import 'package:kingseventgermany/src/constants/image_strings.dart';
import 'package:kingseventgermany/src/constants/sizes.dart';
import 'package:kingseventgermany/src/constants/text_strings.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black,),
        title: Text(rAppTitle, style: Theme.of(context).textTheme.headlineLarge,),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red,
            ),
            child: IconButton(onPressed: (){}, icon: const Image(image: AssetImage(appLogo))),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(rDashboardPadding),
          child: const Text("DASHBOARD SCREEN"),
        ),
      ),
    );
  }
}