import 'package:flutter/material.dart';
import 'package:flutter_application_1/messengerPage.dart';

void main() {
  runApp(Message());
}

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MessengerPage() ,
    );
  }
}
