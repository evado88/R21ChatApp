import 'package:flutter/material.dart';
import 'userinfo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _username = '';
  String _password = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Participant ID',
                ),
                onChanged: (value) => {
                  setState(() {
                    _username = value;
                  }),
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter PIN',
                ),
                onChanged: (value) => {
                  setState(() {
                    _password = value;
                  }),
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: _loginUser,
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      );

  void _loginUser() {
    if (_username.isEmpty) {
      final snackBar = SnackBar(
        content: const Text('Please enter a valid Participant ID'),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );

      // Find the ScaffoldMessenger in the widget tree
      // and use it to show a SnackBar.
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      Navigator.pushNamed(
        context,
        '/chat',
        arguments: UserInfo(_username, _password),
      );
    }
  }
}
