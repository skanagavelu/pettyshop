import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        title: const Text('Register'),
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
          _showDialog(context, formKey);
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
        Navigator.of(context).pop();
      },
    );
    Widget confirmButton = TextButton(
      child: const Text(
        "Confirm",
        style: TextStyle(
          color: Colors.lightGreenAccent,
        ),
      ),
      onPressed: () {},
    );

    // set up the AlertDialog
    return AlertDialog(
      title: const Text("Email confirmation"),
      content: const Text(
          "OTP will be send to your Email, \nPlease confirm your email id is valid?"),
      actions: [
        cancelButton,
        confirmButton,
      ],
      elevation: 24.0,
      backgroundColor: Colors.indigo[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );

    // return const CupertinoAlertDialog(
    //   title: Text('Accept'),
    // );

    // return showDialog(
    //   context: context,
    //   builder: (_) => CupertinoAlertDialog(
    //     title: Text('Accept'),
    //   ),
    //   barrierDismissible: false,
    // ).then((value) => value ?? false);

    // return AlertDialog(
    //   content: Container(
    //     padding: const EdgeInsets.all(8.0),
    //     decoration: const BoxDecoration(
    //         gradient: LinearGradient(colors: [
    //       Colors.blue,
    //       Colors.red,
    //     ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    //     child: Text('Accept'),
    //   ),
    //   contentPadding: EdgeInsets.all(0.0),
    // );
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

// class BlurryDialog extends StatelessWidget {
//   String title;
//   String content;
//   VoidCallback continueCallBack;
//
//   BlurryDialog(this.title, this.content, this.continueCallBack);
//   TextStyle textStyle = TextStyle(color: Colors.black);
//
//   @override
//   Widget build(BuildContext context) {
//     return BackdropFilter(
//         filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
//         child: AlertDialog(
//           title: Text(
//             title,
//             style: textStyle,
//           ),
//           content: Text(
//             content,
//             style: textStyle,
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text("Continue"),
//               onPressed: () {
//                 continueCallBack();
//               },
//             ),
//             TextButton(
//               child: Text("Cancel"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         ));
//   }
// }

// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: OutlinedButton(
//           onPressed: () {
//             Navigator.of(context).restorablePush(_dialogBuilder);
//           },
//           child: const Text('Open Dialog'),
//         ),
//       ),
//     );
//   }
//
//   static Route<Object?> _dialogBuilder(
//       BuildContext context, Object? arguments) {
//     return DialogRoute<void>(
//       context: context,
//       builder: (BuildContext context) =>
//           const AlertDialog(title: Text('Material Alert!')),
//     );
//   }
// }
