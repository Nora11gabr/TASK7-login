import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/textformfield.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xff2b475e),
      body: Form(
        child: ListView(
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
                  var formdata = formstate.currentState;
                  if (formdata!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } else {
                    print("error");
                  }
                },
                tex: "Log in"),
          ],
        ),
      ),
    );
  }
}
