import 'package:flutter/material.dart';
import 'signup_screen.dart'; // Importe a tela de cadastro

void navigateToSignUpScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SignUpScreen()),
  );
}
