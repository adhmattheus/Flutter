// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newlist/components/Planetalista.dart';
import 'Planetrow.dart';

class Pagebody extends StatelessWidget {
  const Pagebody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Planetrow(planetas[0]);
  }
}
