import 'package:flutter/material.dart';

void print1() {
  print("help");
}

class MessengerPage extends StatefulWidget {
  const MessengerPage({super.key});

  @override
  State<MessengerPage> createState() => _MessengerPage();
}

class _MessengerPage extends State<MessengerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: print1, icon: Icon(Icons.image)),
        actions: [
          Tooltip(
            message: "Search",
            triggerMode: TooltipTriggerMode.longPress,
            child: IconButton(
              onPressed: print1,
              icon: Icon(Icons.call, size: 30),
            ),
          ),
          Tooltip(
            message: "Search",
            triggerMode: TooltipTriggerMode.longPress,
            child: IconButton(
              onPressed: print1,
              icon: Icon(Icons.camera, size: 30),
            ),
          ),
          Tooltip(
            message: "Search",
            triggerMode: TooltipTriggerMode.longPress,
            child: IconButton(
              onPressed: print1,
              icon: Icon(Icons.search, size: 30),
            ),
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://img.freepik.com/premium-photo/memoji-emoji-handsome-smiling-man-white-background_826801-6987.jpg?semt=ais_hybrid&w=740&q=80",
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 250,

                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 130),
              Container(
                height: 50,
                width: 250,

                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
