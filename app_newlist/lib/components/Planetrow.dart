// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'Planetalista.dart';

class Planetrow extends StatelessWidget {
  final Planetas planetas;
  Planetrow(this.planetas);

  final planetThumbail = Container(
    margin: EdgeInsets.symmetric(
      vertical: 10.0,
    ),
    alignment: FractionalOffset.centerLeft,
    child: Image(
      image: AssetImage(planetas.imagem),
      height: 92.0,
      width: 92.0,
    ),
  );

  final planetCard = Container(
    height: 124.0,
    margin: EdgeInsets.only(left: 46.0),
    decoration: BoxDecoration(
      color: Color(0xFF333366),
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
          offset: Offset(
            0.0,
            10.0,
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: <Widget>[
          planetCard,
          planetThumbail,
        ],
      ),
    );
  }
}
