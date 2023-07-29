import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/textformfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xff2b475e),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          SizedBox(
            height: 280,
          ),
          customtextfeild(
            isvalid: (value) {
              if (value.length < 10) {
                return "Email is too short";
              }
            },
            labeltxt: "Email",
          ),
          SizedBox(
            height: 15,
          ),
          customtextfeild(
            isvalid: (value) {
              if (value.length < 8) {
                return "Password is too short";
              }
            },
            labeltxt: "Password",
          ),
          SizedBox(
            height: 60,
          ),
          CustomButton(
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              tex: "Log in"),
        ],
      ),
    );
  }
}
