// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:newlist/components/GradientAppBar.dart';
import 'Pagebody.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar("PlanetasList"),
          Pagebody(),
        ],
      ),
    );
  }
}
