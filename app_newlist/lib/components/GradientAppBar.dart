// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, avoid_renaming_method_parameters, avoid_types_as_parameter_names, non_constant_identifier_names, file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      decoration: BoxDecoration(color: Colors.blue),
      child: Center(
        child: Text(title,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 36.0)),
      ),
    );
  }
}
