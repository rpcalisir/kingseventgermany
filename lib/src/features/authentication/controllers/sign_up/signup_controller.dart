import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kingseventgermany/src/repository/authentication_repository/authentication_repository.dart';

class SignupController extends GetxController
{
  //Returns an instance of SignupController class
  static SignupController get instance => Get.find();

  //cA TextField Controllers to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNumber = TextEditingController();
  final birthDate = TextEditingController();

  //cE Performs the registration operation on Firebase
  void registerUser(String email, String password)
  {
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
}