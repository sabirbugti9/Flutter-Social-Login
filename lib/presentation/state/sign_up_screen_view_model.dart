import 'package:flutter/material.dart';

class SignUpScreenViewModel with ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get usernameController => _usernameController;

  void getStarted() {
    // TODO: Implement the logic for getting started
  }

  void navigateToLoginPage() {}

  void loginWithGoogle(){
    // TODO: Implement the logic for logging in with Google
  }

  void loginWithApple(){
    // TODO: Implement the logic for logging in with Apple
  }
}
