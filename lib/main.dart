import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'chat.dart';
import 'login.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(
        MaterialApp(
          title: 'Named Routes Demo',
          // Start the app with the "/" named route. In this case, the app starts
          // on the FirstScreen widget.
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          routes: {
            // When navigating to the "/" route, build the FirstScreen widget.
            '/': (context) => const LoginScreen(title: 'Login'),
            // When navigating to the "/second" route, build the SecondScreen widget.
            '/chat': (context) => const ChatPage(title: 'Chat'),
          },
        ),
      ));
}
