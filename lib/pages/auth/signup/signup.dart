import 'package:assignmentram/common/common/colors.dart';
import 'package:assignmentram/pages/auth/signin/signin.dart';
import 'package:assignmentram/pages/dashboard/dashboard_screen.dart';
import 'package:assignmentram/widgets/button.dart';
import 'package:assignmentram/widgets/inpute_field.dart';
import 'package:assignmentram/widgets/logo_large.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = 'signup_screen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 30.0,
                  ),
                  LogoLargeWidget(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: EditTextFields(
                                text: 'Name',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: EditTextFields(
                                text: 'Email',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: EditTextFields(
                                text: 'Password',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ButtonWidget(
                                        text: 'Sign Up',
                                        click: () {
                                          Navigator.push(
                                            context,
                                            PageRouteBuilder(
                                              pageBuilder: (c, a1, a2) =>
                                                  const DashBoard(),
                                              transitionsBuilder:
                                                  (c, anim, a2, child) =>
                                                      FadeTransition(
                                                          opacity: anim,
                                                          child: child),
                                              transitionDuration:
                                                  const Duration(
                                                      milliseconds: 500),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Center(
                                  child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (c, a1, a2) =>
                                          const SignInScreen(),
                                      transitionsBuilder:
                                          (c, anim, a2, child) =>
                                              FadeTransition(
                                                  opacity: anim, child: child),
                                      transitionDuration:
                                          const Duration(milliseconds: 500),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Already have an account? Sign In',
                                  style: TextStyle(
                                    color: blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              )),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
