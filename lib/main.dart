// ignore_for_file: prefer_const_constructors
import 'package:block_management/ui/components/bank_screen_components/offers.dart';
import 'package:block_management/ui/screens/bank_screen/bank_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.blue,
        )
      ),
      home: BankScreen(),
    );
  }
}

// import 'package:block_management/ui/screens/bottom_sheet_screen/bottom_sheet.dart';
// import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Bottom Sheet',
//       theme: ThemeData(
//         appBarTheme: AppBarTheme(
//           color: Colors.blue,
//           centerTitle: true
//         ),
//       ),
//       home: BottomSheetScreen(),
//     );
//   }
  
// }





// i 

// import 'package:block_management/data/repositories/post_repositorie.dart';
// import 'package:block_management/logic/cubit/post_cubit/post_cubit.dart';
// import 'package:block_management/ui/screens/api_screens/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => PostCubit(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//             appBarTheme: AppBarTheme(color: Colors.blue, centerTitle: true)),
//         home: HomeScreen(),
//       ),
//     );
//   }
// }



// import 'package:block_management/blocks/internet/internet_bloc.dart';
// import 'package:block_management/blocks/login_bloc/login_bloc.dart';
// import 'package:block_management/blocks/signup/sign_up_bloc_bloc.dart';
// import 'package:block_management/ui/screens/internet_conectivity/internet.dart';
// import 'package:block_management/ui/screens/login/login_screen.dart';
// import 'package:block_management/ui/screens/signup/signup_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_){
//         return SignUpBlocBloc();
//       },
//       child:  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SignupScreen(),
//     ),
//       );
//   }
// }














// import 'package:block_management/blocks/login_bloc/login_bloc.dart';
// import 'package:block_management/ui/screens/internet_conectivity/internet.dart';
// import 'package:block_management/ui/screens/login/login_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_){
//         return LoginBloc();
//       },
//       child:  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Internet(),
//     ),
//       );
//   }
// }
