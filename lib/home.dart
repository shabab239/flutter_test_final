import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("data",
        style: TextStyle(
        fontSize: 16, // Set desired font size
        decoration: TextDecoration.none, // Remove underline
      ),),

    );
  }
}
