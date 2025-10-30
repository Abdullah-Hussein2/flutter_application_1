  // ...existing code...
  import 'package:flutter/material.dart';
  import 'package:flutter_application_1/main.dart';
  import 'main.dart';





  class LoginPage extends StatefulWidget {
    LoginPage({super.key});

    @override
    State<LoginPage> createState() => _LoginPageState();
  }

  class _LoginPageState extends State<LoginPage> {
    @override
    Widget build(BuildContext context) {
      TextEditingController username = TextEditingController();
      TextEditingController pass = TextEditingController();

      return Scaffold(
        backgroundColor:  Color(0xFF0B132B),
        appBar: AppBar( backgroundColor: Color(0xFF112D4E),
          leading:  Container(
            width: 29,
            height: 30,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: FilledButton.icon(
              style: FilledButton.styleFrom(
                iconSize: 30,
              backgroundColor: Color(0xFF112D4E),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
              onPressed: () => Navigator.of(context).maybePop(),
              icon: Icon(Icons.arrow_back, color: Colors.white),
              label: SizedBox.shrink(),
              
              
              ),
              
            ),
          ),
          leadingWidth: 100  ,
        ),
        body: Container(
          color: Colors.transparent,
          child: Center(
            child: Container(
              padding:  EdgeInsets.all(16),
              decoration: BoxDecoration(
                color:  Color(0xFF112D4E), // card color
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 12,
                    offset:  Offset(0, 6),
                  ),
                ],
              ),
              child: ListView(
                shrinkWrap: true,
                padding:  EdgeInsets.all(20),
                children: [
                  TextFormField(
                    controller: username,
                    style:  TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon:  Icon(Icons.email, color: Colors.white70),
                      hintText: "Enter your email",
                      hintStyle: TextStyle(color: Colors.white70.withOpacity(0.8)),
                      labelText: "Email",
                      labelStyle:  TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor:  Color(0xFF0B2535), // input fill
                      contentPadding:  EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: pass,
                    obscureText: true,    
                    style:  TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon:  Icon(Icons.lock, color: Colors.white70),
                      hintText: "Enter your Password",
                      hintStyle: TextStyle(color: Colors.white70.withOpacity(0.8)),
                      labelText: "Password",
                      labelStyle:  TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor:  Color(0xFF0B2535),
                      contentPadding:  EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor:  Color(0xFF00BFA6), // accent teal
                      foregroundColor: Colors.white,
                      padding:  EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute<void>(builder: (context) => MyApp()));
                    },
                    child:  Text("Confirm"),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
