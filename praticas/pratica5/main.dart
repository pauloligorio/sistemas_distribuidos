import 'package:flutter/material.dart';

void main() {
  runApp(
    Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: const FlutterLogo(),
          ),
        ),
        Expanded(
          child: Image(
            image: NetworkImage(
              'https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI',
            ),
          ),
        ),
        Expanded(
          child: Text(
            'Google Flutter',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              backgroundColor: Colors.white,
              color: Colors.blueAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}