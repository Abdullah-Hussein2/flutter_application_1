import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'Navigation Basics', home: MyApp()));
}

void printThis() {
  print("TEST");
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text(
            "This is a text",
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
          child: ElevatedButton(
            child: Icon(Icons.wallet, size: 50, color: Colors.black),

            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const FirstRoute(),
                ),
              );
            },
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
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Badge(child: Icon(Icons.notifications_sharp)),
              label: 'Notifications',
            ),
            NavigationDestination(
              icon: Badge(label: Text('2'), child: Icon(Icons.messenger_sharp)),
              label: 'Messages',
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

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
        backgroundColor: Colors.black12,
      ),
      backgroundColor: Color.fromARGB(255, 12, 53, 125),
      body: Center(child: const Text('Open route')),
    );
  }
}
