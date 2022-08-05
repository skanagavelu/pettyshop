import 'package:flutter/material.dart';
import 'package:petty_shop/screens/login.dart';

InputDecoration kLoginTextFieldInputDecorations(GlobalKey<FormState> formKey) {
  return InputDecoration(
    filled: true,

    fillColor: Colors.white,
    // labelText: 'Mobile',
    // labelStyle: TextStyle(
    //   fontSize: 20,
    //   fontFamily: 'Rubik',
    //   color: Colors.deepPurpleAccent,
    //   fontWeight: FontWeight.bold,
    //   backgroundColor: Colors.cyan,
    // ),

    suffixIcon: LoginIconButton(formKey),
    prefixIcon: const Icon(
      Icons.phone_iphone_rounded,
      color: Colors.deepPurpleAccent,
      size: 30,
    ),
    hintText: 'Mobile number (10 digit)',
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide.none,
    ),
  );
}

InputDecoration kRegisterTextFieldInputDecorations(
    GlobalKey<FormState> formKey, String labelName) {
  return InputDecoration(
    filled: true,
    fillColor: Colors.white,
    labelText: labelName,
    labelStyle: const TextStyle(
      fontSize: 20,
      fontFamily: 'Rubik',
      color: Colors.deepPurpleAccent,
      fontWeight: FontWeight.bold,
      backgroundColor: Colors.cyan,
    ),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide.none,
    ),
  );
}