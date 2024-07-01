import 'package:block_management/ui/components/signup_body.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up', style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        backgroundColor: Colors.orange.shade900,
        centerTitle: true,
      ),
      body: SignupBody(),
    );
  }
}