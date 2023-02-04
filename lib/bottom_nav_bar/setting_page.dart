import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Setting Page",
        style: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
      )),
    );
  }
}
