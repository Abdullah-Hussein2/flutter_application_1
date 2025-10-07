import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

void printThis() {
  print("TEST");
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text(
            "FaceBook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Tooltip(
              message: "Search",
              triggerMode: TooltipTriggerMode.longPress,
              child: IconButton(
                onPressed: printThis,
                icon: Icon(Icons.search, size: 30),
              ),
            ),
            Tooltip(
              message: "Message",
              triggerMode: TooltipTriggerMode.longPress,
              child: IconButton(
                onPressed: printThis,
                icon: Icon(Icons.message),
              ),
            ),
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Tooltip(
              message: "Deposit",
              child: IconButton(onPressed: printThis, icon: Icon(Icons.wallet)),
            ),
          ],
        ),

        backgroundColor: Color.fromARGB(255, 12, 53, 125),
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black54,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
    );
  }
}
