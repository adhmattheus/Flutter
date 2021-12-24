// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('configuracoes'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('configuracoes opa'),
      ),
    );
  }
}
