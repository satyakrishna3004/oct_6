import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firstscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class firstscreen extends StatefulWidget {
  const firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  bool? isEnabled = false;
  List<String> college = ["ACOE", "ACET", "AEC"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Column(
        children: [
          CheckboxMenuButton(
              value: isEnabled,
              onChanged: (val) {
                setState(() {
                  isEnabled = val;
                });
              },
              child: Text("I understand")),
          DropdownMenu(
              hintText: "Select College",
              dropdownMenuEntries:
                  college.map<DropdownMenuEntry<String>>((val) {
                return DropdownMenuEntry(value: val, label: val);
              }).toList())
        ],
      ),
    );
  }
}
