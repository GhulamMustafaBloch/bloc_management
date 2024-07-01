import 'package:block_management/ui/components/login_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login Screen', style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.orange.shade900,
      ),
      body: LoginBody(),
    );
  }
}