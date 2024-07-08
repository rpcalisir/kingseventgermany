import 'package:flutter/material.dart';
import 'package:kingseventgermany/src/common_widgets/form/form_header_widget.dart';
import 'package:kingseventgermany/src/constants/sizes.dart';
import 'package:kingseventgermany/src/constants/text_strings.dart';
import 'package:kingseventgermany/src/features/authentication/screens/sign_up/sign_up_screen_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(rSignUp),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(rDefaultSize),
          child: const Column(
            children: [
              FormHeaderWidget(),
              SignUpScreenFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
