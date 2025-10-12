import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

void main() {
  runApp(const MaterialApp(title: "Test sec page", home: SecPage()));
}

void deposit() {}

class SecPage extends StatefulWidget {
  const SecPage({super.key});

  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
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
              message: "Back",
              triggerMode: TooltipTriggerMode.longPress,
              child: BackButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => const MyApp(),
                    ),
                  );
                },
                
              ),
            ),
          ],
        ),

        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Retrieve Text Input')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          controller: myController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.done,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onSubmitted: (value) {
            final parsed = int.tryParse(value);
            if (parsed != null) {
              debugPrint('Submitted int: $parsed');
            } else {
              debugPrint('Invalid integer: $value');
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
      
        onPressed: () {
          ppp(myController.text);
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}

void ppp(String inpte) {
  final parsed = int.tryParse(inpte);
  if (parsed != null) {
    debugPrint('Input (int): $parsed');
  } else {
    debugPrint('Input is not a valid integer: $inpte');
  }
}
