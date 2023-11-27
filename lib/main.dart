// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:quote/button.dart';
import 'package:quote/quote.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
      body: Center(
        child: Button(),
      ),
    )),
  ));
}
