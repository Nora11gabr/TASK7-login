import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class customtextfeild extends StatelessWidget {
  customtextfeild(
      {required this.labeltxt, required this.isvalid, this.secure = false});

  bool secure = false;
  String? labeltxt;
  dynamic isvalid;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secure,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: isvalid!,
      decoration: InputDecoration(
        label: Text(
          labeltxt!,
          style: TextStyle(color: Colors.white),
        ),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}
