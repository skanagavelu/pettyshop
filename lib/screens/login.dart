import 'package:flutter/material.dart';
import 'package:petty_shop/screens/utils/screen_utils.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static final RegExp numberRegExp = RegExp(r'^[0-9]+$');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // verticalDirection: VerticalDirection.up,
        // mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              maxLength: 10,
              maxLines: 1,
              style: const TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
              decoration: kLoginTextFieldInputDecorations(_formKey),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your mobile number';
                } else if (value.length != 10) {
                  return 'Mobile number must be of 10 digits';
                } else if (!numberRegExp.hasMatch(value)) {
                  return 'Only numeric is allowed';
                }
                return null;
              },
            ),
          ),
          // const SizedBox(
          //   height: 10.0,
          // ),
          // LoginButton(_formKey),
        ],
      ),
    );
  }
}

class LoginIconButton extends StatelessWidget {
  const LoginIconButton(this.formKey, {Key? key}) : super(key: key);
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 37,
      icon: const Icon(Icons.arrow_circle_right),
      tooltip: 'Proceed',
      onPressed: () {
        // Validate will return true if the form is valid, or false if
        // the form is invalid.

        if (formKey.currentState!.validate()) {
          // Process data.
        }
      },
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton(this.formKey, {Key? key}) : super(key: key);
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        primary: Colors.deepPurpleAccent[700],
      ),
      onPressed: () {
        // Validate will return true if the form is valid, or false if
        // the form is invalid.

        if (formKey.currentState!.validate()) {
          // Process data.
        }
      },
      child: const Text('Login'),
    );
  }
}
