import 'package:flutter/material.dart';
import 'package:kingseventgermany/src/common_widgets/form/form_header_widget.dart';
import 'package:kingseventgermany/src/constants/sizes.dart';
import 'package:kingseventgermany/src/constants/text_strings.dart';
import 'package:kingseventgermany/src/features/authentication/screens/sign_in/sign_in_screen_form_widget.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(rSignIn),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(rDefaultSize),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FormHeaderWidget(),
                  SignInScreenFormWidget(),
                ],
              )),
        ),
      ),
    );
  }
}
