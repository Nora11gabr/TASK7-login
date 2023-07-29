import 'package:flutter/material.dart';
import 'package:login/pages/home.dart';
import 'package:login/widgets/button.dart';
import 'package:login/widgets/textformfield.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
