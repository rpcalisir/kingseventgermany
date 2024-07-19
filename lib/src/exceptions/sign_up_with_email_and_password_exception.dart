
class SignUpWithEmailAndPasswordException {
  final String message;

  const SignUpWithEmailAndPasswordException([this.message = "An unknown error occurred!"]);

  factory SignUpWithEmailAndPasswordException.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignUpWithEmailAndPasswordException('The password provided is too weak.');
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordException('The account already exists for that email.');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordException('The email address is not valid.');
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordException('Email/password accounts are not enabled.');
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordException('The user account has been disabled.');
      default:
        return const SignUpWithEmailAndPasswordException();
    }
  }
}
