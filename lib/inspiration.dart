// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'apifunc.dart';

class Inspiration extends StatefulWidget {
  const Inspiration({super.key});

  @override
  State<Inspiration> createState() => _InspirationState();
}

class _InspirationState extends State<Inspiration> {
  var i = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF6E2BDC),
              Color(0x006E2BDC),
            ]),
      ),
      child: Center(
        child: OutlinedButton(
          onPressed: () async {
            i = i + 1;
            await getAPIone();
            setState(() {});
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(data[i]['text'],
                  style: TextStyle(fontSize: 20, color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
