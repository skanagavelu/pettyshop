import 'package:flutter/material.dart';

const kTextFieldInputDecorations = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.phone_iphone_rounded,
    color: Colors.white,
    size: 40,
  ),
  hintText: 'Mobile number (10 digit)',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    borderSide: BorderSide.none,
  ),
);
