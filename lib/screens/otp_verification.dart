import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final cont1 = TextEditingController();
  final cont2 = TextEditingController();
  final cont3 = TextEditingController();
  final cont4 = TextEditingController();
  final cont5 = TextEditingController();
  final cont6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
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
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          controller: cont1,
                          onChanged: (value) => {
                            if (value.length == 1)
                              {FocusScope.of(context).nextFocus()}
                          },
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          validator: (String? value) {
                            // if (value == null || value.isEmpty) {
                            //   return 'Please enter name of your shop';
                            // } else if (value.length > 20) {
                            //   return 'Shop Name cannot be more than 20 characters';
                            // }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              VerifyButton(_formKey, this),
            ],
          ),
        ),
      ),
    );
  }
}

class VerifyButton extends StatelessWidget {
  const VerifyButton(this.formKey, this.state, {Key? key}) : super(key: key);
  final GlobalKey<FormState> formKey;
  final _OTPVerificationState state;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        primary: Colors.deepPurpleAccent[700],
      ),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          print('value:${state.cont1.value.text}');
        }
      },
      child: const Text('Verify'),
    );
  }
}
