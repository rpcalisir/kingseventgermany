class SignInWithEmailAndPasswordException {
  final String message;

  const SignInWithEmailAndPasswordException([this.message = "An unknown error occurred!"]);

  factory SignInWithEmailAndPasswordException.code(String code) {
    switch (code) {
      case 'invalid-email':
        return const SignInWithEmailAndPasswordException('The email address is not valid.');
      case 'user-disabled':
        return const SignInWithEmailAndPasswordException('The user account has been disabled.');
      case 'user-not-found':
        return const SignInWithEmailAndPasswordException('No user found for that email.');
      case 'wrong-password':
        return const SignInWithEmailAndPasswordException('Wrong password provided.');
      default:
        return const SignInWithEmailAndPasswordException();
    }
  }
}
