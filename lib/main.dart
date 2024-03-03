import 'package:carrito/Presentation/auth/Login.dart';
import 'package:flutter/material.dart';

import 'Presentation/auth/register.dart';
import 'Presentation/home/homeScreen.dart';

void main() async{

  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
