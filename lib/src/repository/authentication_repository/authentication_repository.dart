// ignore_for_file: avoid_print
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:kingseventgermany/src/exceptions/sign_in_with_email_and_password_xception.dart';
import 'package:kingseventgermany/src/exceptions/sign_up_with_email_and_password_exception.dart';

class AuthenticationRepository extends GetxController
{
  static AuthenticationRepository get instance => Get.find();

  //Variables

  final _firebaseAuthInstance = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_firebaseAuthInstance.currentUser);

    //Always listens the user event from Firebase, if user signs out then firebaseUser knows it
    firebaseUser.bindStream(_firebaseAuthInstance.userChanges());
    
    //Whenever there is change on firebaseUser, _setInitialScreen method is executed
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    // user == null ? Get.to(() => const WelcomeScreen()) : Get.offAll(() => const DashboardScreen());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _firebaseAuthInstance.createUserWithEmailAndPassword(email: email, password: password);
      // firebaseUser.value != null ? Get.offAll(() => const DashboardScreen()) : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch(e){
      final ex = SignUpWithEmailAndPasswordException.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    }
    catch (_) {
      const ex = SignUpWithEmailAndPasswordException();
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try 
    {
      await _firebaseAuthInstance.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch(e){
      final ex = SignInWithEmailAndPasswordException.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    }
    catch (_) {
      const ex = SignInWithEmailAndPasswordException();
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> signOut(String email, String password) async => _firebaseAuthInstance.signOut();

}