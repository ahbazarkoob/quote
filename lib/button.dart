// ignore_for_file: must_be_immutable, use_build_context_synchronously, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quote/quote.dart';

import 'apifunc.dart';

class Button extends StatefulWidget {
  Button();

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(backgroundColor: Color(0xFF6E2BDC)),
          onPressed: () async {
            await getAPIone();
            Navigator.push(context, MaterialPageRoute(builder: (_) => Quote()));
          },
          child: Text(
            'Get Quote',
            style: TextStyle(color: Colors.black87),
          )),
    );
  }
}
