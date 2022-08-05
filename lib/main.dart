import 'package:flutter/material.dart';
import 'package:petty_shop/screens/login.dart';

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
                children: const <Widget>[
                  CircleAvatar(
                    radius: 85,
                    backgroundColor: Colors.cyan,
                    backgroundImage: AssetImage('images/Logo.png'),
                  ),
                  Text(
                    'Petty Shop',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 26,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  LoginForm(),
                  //RegisterForm(),
                ],
              ),
            ),
          )),
    );
  }
}
