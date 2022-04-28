import 'package:flutter/material.dart';

class fees extends StatefulWidget {
  @override
  _feesState createState() => _feesState();
}

class _feesState extends State<fees> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('fees'),
        ),
      ),
    );
  }
}
