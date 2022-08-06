import 'package:flutter/material.dart';
import 'package:petty_shop/screens/auth/otp_verification.dart';
import 'package:petty_shop/screens/utils/screen_utils.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static final RegExp emailPattern = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            // verticalDirection: VerticalDirection.up,
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  // maxLength: 10,
                  // maxLines: 1,

                  style: kRegisterTextStyle(),
                  decoration:
                      kRegisterTextFieldInputDecorations(_formKey, "Shop Name"),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name of your shop';
                    } else if (value.length > 20) {
                      return 'Shop Name cannot be more than 20 characters';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  // maxLength: 10,
                  // maxLines: 1,
                  style: kRegisterTextStyle(),
                  decoration:
                      kRegisterTextFieldInputDecorations(_formKey, "User Name"),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    } else if (value.length > 10) {
                      return 'Name cannot be more than 20 characters';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextFormField(
                  // maxLength: 10,
                  // maxLines: 1,
                  style: kRegisterTextStyle(),
                  decoration:
                      kRegisterTextFieldInputDecorations(_formKey, "Email Id"),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email id';
                    } else if (value.length > 30) {
                      return 'Email id cannot be more that 30 characters';
                    } else if (!emailPattern.hasMatch(value)) {
                      return 'Please enter valid email id';
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
        ),
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
        if (formKey.currentState!.validate()) {
          return _showDialog(context, formKey);
        }
      },
      child: const Text('Register'),
    );
  }
}

class EmailConfirmationAlertDialog extends StatelessWidget {
  const EmailConfirmationAlertDialog(this.formKey, {Key? key})
      : super(key: key);
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: const Text(
        "Cancel",
        style: TextStyle(
          color: Colors.lightGreenAccent,
        ),
      ),
      onPressed: () {
        // Navigator.of(context).pop();
      },
    );
    Widget confirmButton = TextButton(
      child: const Text(
        "Confirm",
        style: TextStyle(
          color: Colors.lightGreenAccent,
        ),
      ),
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const OTPVerification(); //const OTPVerification();
            },
          ),
          (Route<dynamic> route) => false,
        );
        // Navigator.of(context).pushReplacement(MaterialPageRoute(
        //     builder: (BuildContext context) => const OTPVerification()));
      },
    );

    // set up the AlertDialog
    return AlertDialog(
      title: const Text("Email confirmation"),
      content: const Text(
          "OTP will be only send to your Email, \nPlease confirm your email id is valid?"),
      actions: [
        cancelButton,
        confirmButton,
      ],
      elevation: 24.0,
      backgroundColor: Colors.indigo[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
      ),
    );
  }
}

_showDialog(BuildContext context, GlobalKey<FormState> formKey) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return EmailConfirmationAlertDialog(formKey);
    },
  );
}
