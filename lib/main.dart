import 'package:assignmentram/pages/auth/forgotpass/forgotpass.dart';
import 'package:assignmentram/pages/auth/signin/signin.dart';
import 'package:assignmentram/pages/auth/signup/signup.dart';
import 'package:assignmentram/pages/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Oxiline',
      initialRoute: SignInScreen.routeName,
      routes: {
        DashBoard.routeName: (context) => DashBoard(),
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignInScreen.routeName: (context) => const SignInScreen(),
        ForgotPasswordScreen.routeName: (context) =>
            const ForgotPasswordScreen(),
      },
    );
  }
}
