import 'package:flutter/material.dart';

class LogoLargeWidget extends StatelessWidget {
  const LogoLargeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      alignment: Alignment.center, // This is needed
      child: Image.asset(
        "images/oxiline-logo.png",
        fit: BoxFit.contain,
        width: 300,
        height: 150,
      ),
    );
  }
}
