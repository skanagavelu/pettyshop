import 'package:flutter/material.dart';
import 'package:petty_shop/screens/login.dart';
import 'package:petty_shop/screens/utils/screen_utils.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.cyan,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // verticalDirection: VerticalDirection.up,
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  const CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.cyan,
                    backgroundImage: AssetImage('images/Logo.png'),
                  ),
                  const Text(
                    'Petty Shop',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const TextField(
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                      decoration: kTextFieldInputDecorations,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const LoginButton(),
                ],
              ),
            ),
          )),
    );
  }
}
