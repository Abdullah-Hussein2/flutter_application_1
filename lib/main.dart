import 'package:flutter/material.dart';
import 'package:flutter_application_1/messengermain.dart';
import 'secPage.dart';
import 'toters.dart';

void main() {
  runApp(const MaterialApp(title: 'Navigation Basics', home: MyApp()));
}

void printThis() {
  print("TEST");
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text(
            "Banking app",
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                icon: Icon(Icons.wallet),
                label: Text('deposit'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const SecPage(),
                    ),
                  );
                },
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.wallet),
                label: Text('Calc'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const SecPage(),
                    ),
                  );
                },
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.food_bank),
                label: Text('Toterss'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const Toters(),
                    ),
                  );
                },
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.wallet),
                label: Text('Message'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(builder: (context) => Message()),
                  );
                },
              ),
            ],
          ),
        ),

        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Color.fromARGB(255, 12, 53, 125),
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.wallet),
              icon: Icon(Icons.wallet_sharp),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.shield_sharp),
              label: 'Protection',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'settings',
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
