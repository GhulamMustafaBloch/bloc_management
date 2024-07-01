// ignore_for_file: prefer_const_constructors

import 'package:block_management/blocks/signup/sign_up_bloc_bloc.dart';
import 'package:block_management/blocks/signup/sign_up_bloc_event.dart';
import 'package:block_management/blocks/signup/sign_up_bloc_state.dart';
import 'package:block_management/ui/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController fatherNmeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // your widgets here
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 270,
              alignment: Alignment.center,
              child: Lottie.asset("assets/animations/signup.json")
              ),
              BlocBuilder<SignUpBlocBloc, SignUpBlocState>(
            builder: (context, state) {
              if (state is SignupErrorState) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(state.errorMassege),
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
                  // Do something with the user input.
                  BlocProvider.of<SignUpBlocBloc>(context).add(
                    userNameEvent(nameController.text)
                  );
                },
                controller: nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: "Name",
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
                controller: fatherNmeController,
                 onChanged: (value) {
                  // Do something with the user input.
                  BlocProvider.of<SignUpBlocBloc>(context).add(
                    fatherNameEvent(fatherNmeController.text)
                  );
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: "Father Name",
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
                  // Do something with the user input.
                  BlocProvider.of<SignUpBlocBloc>(context).add(
                    emailEvent(emailController.text)
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
                controller: passwordController,
                 onChanged: (value) {
                  // Do something with the user input.
                  BlocProvider.of<SignUpBlocBloc>(context).add(
                    passwordEvent(passwordController.text)
                  );
                },
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Container(
              child: TextField(
                controller: confirmPasswordController,
                 onChanged: (value) {
                  // Do something with the user input.
                  BlocProvider.of<SignUpBlocBloc>(context).add(
                    confirmPasswordEvent(confirmPasswordController.text)
                  );
                },
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Confirm Password",
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
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.orange.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              children: [
                Text("Already have an account?", style: TextStyle(fontSize: 16)),
                TextButton(
                  onPressed: (){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()),);
                  }, 
                  child: Text("Sign In"))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
