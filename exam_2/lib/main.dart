import 'package:exam_2/pages/Launch_page/Launch_Screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(My_Project());
}

class My_Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LaunchScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
