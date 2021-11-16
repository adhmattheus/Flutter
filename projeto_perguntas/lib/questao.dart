// ignore_for_file: use_key_in_widgetonstructors, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
