import 'package:flutter/material.dart';

class Toters extends StatefulWidget {
  const Toters({super.key});

  @override
  State<Toters> createState() => _TotersState();
}

class _TotersState extends State<Toters> {
  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController pass = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: Row(children: [FittedBox()]),
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
        actions: [Row()],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        // scrollDirection: Axis.horizontal,
        children: [
          TextFormField(
            controller: username,
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: "Enter your email",
              labelText: "Email",
            ),
          ),
          TextFormField(
            controller: pass,
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: "Enter your Password",
              labelText: "Email",
            ),
          ),
          FilledButton(
            onPressed: () {
              print(username.text);
              print(pass.text);
            },
            child: Text("yaaasss"),
          ),
        ],
      ),
    );
  }
}
