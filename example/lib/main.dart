import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:smartfluttertoast/smartfluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _smartToaster = Smartfluttertoast();

  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Toast Example'),
        ),
        body: Center(
          child: InkWell(
            child: Text("Show Toast"),
            onTap: (){
              _smartToaster.showToast('My custom message');
            },
          ),
        ),
      ),
    );
  }
}
