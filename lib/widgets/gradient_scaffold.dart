import 'package:flutter/material.dart';

class GradientScaffold extends StatelessWidget{
  const GradientScaffold({super.key,required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 9, 9, 11),Color.fromARGB(255, 2, 6, 23)] 
            ),
        ),
        child: SafeArea(
          child: child
          ),
      ),
    );
  }
}