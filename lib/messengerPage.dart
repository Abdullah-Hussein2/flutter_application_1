import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

void print1() {
  print("help");
}

class MessengerPage extends StatefulWidget {
  const MessengerPage({super.key});

  @override
  State<MessengerPage> createState() => _MessengerPage();
}

class _MessengerPage extends State<MessengerPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(builder: (context) => const MyApp()),
            );
          },
        ),
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
          for (int i = 0; i < 10; i++) ...[
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
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png",
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
          ],
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Tooltip(message: "images", child: Icon(Icons.image)),
              SizedBox(width: 10),

              Tooltip(message: "Camera", child: Icon(Icons.camera)),
              SizedBox(width: 10),

              Tooltip(message: "mic", child: Icon(Icons.mic)),
              SizedBox(width: 10),

              Expanded(
                child: Container(
                  height: 48,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Aa',
                      isDense: true,
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 16.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),

              Tooltip(message: "Like", child: Icon(Icons.thumb_up_off_alt)),
            ],
          ),
        ),
      ),
    );
  }
}
