import 'package:fitness_application/common/code_extension.dart';
import 'package:fitness_application/view/on_boarding/on_boarding_view.dart';
import 'package:fitness_application/view/on_boarding/started_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: TColor.primaryColor1,
        fontFamily: "Poppins"
      ),
      home: const StartedView(),
    );
  }
}

