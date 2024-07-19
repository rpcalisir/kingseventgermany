import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kingseventgermany/src/constants/sizes.dart';
import 'package:kingseventgermany/src/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:kingseventgermany/src/features/authentication/controllers/sign_up/signup_controller.dart';

class SignUpScreenFormWidget extends StatefulWidget {
  const SignUpScreenFormWidget({
    super.key,
  });

  @override
  State<SignUpScreenFormWidget> createState() => _SignUpScreenFormWidgetState();
}

class _SignUpScreenFormWidgetState extends State<SignUpScreenFormWidget> {

  @override
  Widget build(BuildContext context) {

    //cB To access everything in SignupController, we can use Get.put to create an instance using DI, without using instance.
    //Thus, the instance is available through app life cycle and it automatically disposes.(Note that it is not singleton)
    final signUpController = Get.put(SignupController());

    final signUpFormKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: rFormHeight - 10),
      child: Form(
        key: signUpFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: signUpController.fullName, //cC Values that are entered in textfields are stored in Controller's variables
              decoration: const InputDecoration(
                label: Text(rFullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(height: rFormHeight - 20),
            TextFormField(
              controller: signUpController.email,
              decoration: const InputDecoration(
                label: Text(rEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: rFormHeight - 20),
            TextFormField(
              controller: signUpController.password,
              decoration: const InputDecoration(
                label: Text(rPassword),
                prefixIcon: Icon(Icons.fingerprint_outlined),
              ),
            ),
            const SizedBox(height: rFormHeight - 20),
            TextFormField(
              controller: signUpController.birthDate,
              decoration: const InputDecoration(
                label: Text(rBirthDate),
                prefixIcon: Icon(Icons.date_range_rounded),
              ),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) => Column(
                    children: [
                      SizedBox(
                        height:
                            MediaQuery.of(context).copyWith().size.height / 3,
                        child: CupertinoDatePicker(
                          initialDateTime: DateTime.now(),
                          onDateTimeChanged: (DateTime pickedDate) {
                            setState(() {
                              signUpController.birthDate.text =
                                  DateFormat('MM-dd-yyyy').format(pickedDate);
                            });
                          },
                          use24hFormat: true,
                          mode: CupertinoDatePickerMode.date,
                        ),
                      ),
                      CupertinoButton(
                        child: const Text('OK'),
                        onPressed: () => Navigator.of(context).pop(),
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: rFormHeight - 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  if(signUpFormKey.currentState!.validate())
                  {
                    //cD Values that are entered in textfields are stored in Controller's variables, 
                    //these variables are being used here
                    SignupController.instance.registerUser(signUpController.email.text.trim(), signUpController.password.text.trim());
                  }
                },
                child: const Text(rSignUp),
              ),
            )
          ],
        ),
      ),
    );
  }
}
