import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        'Leo, paulo, Ryan!',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.white,
        ),
      ), //Text.
    ), //Center.
  );
}