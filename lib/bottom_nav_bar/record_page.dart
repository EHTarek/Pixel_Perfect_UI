import 'package:flutter/material.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({Key? key}) : super(key: key);

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Record Page",
        style: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
      )),
    );
  }
}
