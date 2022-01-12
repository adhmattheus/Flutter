// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Planetrow.dart';

class Pagebody extends StatefulWidget {
  const Pagebody({Key? key}) : super(key: key);

  @override
  _PagebodyState createState() => _PagebodyState();
}

class _PagebodyState extends State<Pagebody> {
  @override
  Widget build(BuildContext context) {
    return Planetrow();
  }
}
