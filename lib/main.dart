import 'package:flutter/material.dart';
import 'package:xylophone/xylophone_page.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: XylophonePage(),
        backgroundColor: Colors.black,
      ),
    );
  }
}
