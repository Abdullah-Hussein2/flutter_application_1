import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Test sec page",
    home: const SecPage(),
  ));
}

class SecPage extends StatefulWidget{
  const SecPage({super.key});

  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test sec page')),
      body: const Center(child: Text('Second page')),
    );
  }
}