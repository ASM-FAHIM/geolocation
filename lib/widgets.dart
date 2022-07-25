import 'package:flutter/material.dart';

class ReusableF extends StatelessWidget {
  String hintText;
  String? Function(String?)? validator;

  ReusableF({required this.hintText, required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email_outlined),
        suffixIcon: Icon(Icons.privacy_tip_outlined),
        hintText: hintText,
        labelText: "Email",
        labelStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        filled: true,
        fillColor: Colors.white,
        // focusedBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(20.0),
        //     borderSide:
        //         BorderSide(color: Colors.deepOrangeAccent, width: 2.5)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.green, width: 5),
        ),
        // enabled: false,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Color(0xff205a59), width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.green, width: 5),
        ),
      ),
      validator: validator,
    );
  }
}
