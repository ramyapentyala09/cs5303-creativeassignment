import 'package:flutter/material.dart';

import 'colors.dart';

final ButtonStyle raisedButtonStyleYellow = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: Colors.black,
  minimumSize: Size(88, 50),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(100)),
  ),
);

final ButtonStyle raisedButtonStyleBlue = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: blue,
  minimumSize: Size(88, 50),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(100)),
  ),
);
