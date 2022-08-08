import 'package:flutter/material.dart';

class Debit extends StatefulWidget {
  const Debit({Key? key}) : super(key: key);

  @override
  State<Debit> createState() => DebitState();
}

class DebitState extends State<Debit> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final tec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: tec,
                  onChanged: (value) => {
                    //
                  },
                  style: const TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                  decoration: kDebitUserSearchFieldInputDecorations(),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const UserSearchGrid(),
                // UserSearchGrid(tec),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserSearchGrid extends StatefulWidget {
  // const UserSearchGrid(this.tec, {Key? key}) : super(key: key);
  // final TextEditingController tec;
  const UserSearchGrid({Key? key}) : super(key: key);

  @override
  State<UserSearchGrid> createState() => UserSearchGridState();
}

class UserSearchGridState extends State<UserSearchGrid> {
  @override
  Widget build(BuildContext context) {
    // widget.tec.addListener(() {
    //   print("printed");
    // });
    return Expanded(
      //https://stackoverflow.com/questions/49943272/flutter-gridview-in-column-whats-solution
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 1,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: const Text("He'd have you all unravel at the"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: const Text('Heed not the rabble'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],
            child: const Text('Sound of screams but the'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: const Text('Who scream'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Text('Revolution is coming...'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: const Text('Revolution, they...'),
          ),
        ],
      ),
    );
  }
}

InputDecoration kDebitUserSearchFieldInputDecorations() {
  return const InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
    filled: true,
    fillColor: Colors.white,
    prefixIcon: Icon(
      Icons.search_sharp,
      color: Colors.deepPurpleAccent,
      size: 30,
    ),
    hintText: 'Customer search',
    hintStyle: TextStyle(
      color: Colors.grey,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      // borderSide: BorderSide.none,
    ),
  );
}
