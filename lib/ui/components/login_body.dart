import 'package:block_management/blocks/login_bloc/login_bloc.dart';
import 'package:block_management/blocks/login_bloc/login_event.dart';
import 'package:block_management/blocks/login_bloc/login_state.dart';
import 'package:block_management/ui/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // your widgets here
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 300,
              alignment: Alignment.center,
              child: Lottie.asset("assets/animations/signup.json")),
          BlocBuilder<LoginBloc, LoginStates>(
            builder: (context, state) {
              if (state is LoginErrorState) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(state.errorMassage),
                );
              }
              return Container();
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Container(
              child: TextField(
                 onChanged: (value) {
                  // here you can check if password is valid or not
                  BlocProvider.of<LoginBloc>(context).add(
                    EmailOrPasswordEvent(
                      emailController.text, 
                      passwordController.text
                      )
                  );
                },
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email",
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade900, width: 3),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.orange.shade900, width: 3),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Container(
              child: TextField(
                onChanged: (value) {
                  // here you can check if password is valid or not
                  BlocProvider.of<LoginBloc>(context).add(
                    EmailOrPasswordEvent(emailController.text, passwordController.text)
                  );
                },
                controller: passwordController,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade900, width: 3),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.orange.shade900, width: 3),
                    )),
              ),
            ),
          ),
          BlocBuilder<LoginBloc, LoginStates>(
            builder: (context, state) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (state is LoginValidState) {
                        // here you can navigate to next screen
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                      }
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(color:Colors.white, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor:(state is LoginValidState)? Colors.blue:  Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              );
            },
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                Text("Need an account?", style: TextStyle(fontSize: 16)),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text("Sign Up"))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
