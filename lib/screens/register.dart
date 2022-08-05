import 'package:flutter/material.dart';
import 'package:petty_shop/screens/utils/screen_utils.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
              decoration:
                  kRegisterTextFieldInputDecorations(_formKey, "Shop Name"),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your mobile number';
                } else if (value.length != 10) {
                  return 'Mobile number must be of 10 digits';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              maxLength: 10,
              maxLines: 1,
              style: const TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
              decoration:
                  kRegisterTextFieldInputDecorations(_formKey, "User Name"),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your mobile number';
                } else if (value.length != 10) {
                  return 'Mobile number must be of 10 digits';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              maxLength: 10,
              maxLines: 1,
              style: const TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
              decoration:
                  kRegisterTextFieldInputDecorations(_formKey, "Email Id"),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your mobile number';
                } else if (value.length != 10) {
                  return 'Mobile number must be of 10 digits';
                }
                return null;
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              maxLength: 10,
              maxLines: 1,
              style: const TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
              decoration: kRegisterTextFieldInputDecorations(_formKey, "City"),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your mobile number';
                } else if (value.length != 10) {
                  return 'Mobile number must be of 10 digits';
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          RegisterButton(_formKey),
        ],
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton(this.formKey, {Key? key}) : super(key: key);
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
      child: const Text('Register'),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton(this.formKey, {Key? key}) : super(key: key);
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
      child: const Text('Cancel'),
    );
  }
}
