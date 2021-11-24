// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import './components/transaction_user.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais 2'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            // ignore: prefer_const_constructors
            child: Card(
              color: Colors.blue,
              child: const Text('Gráfico'),
              elevation: 5,
            ),
          ),
          TransactionUser(),
        ],
      ),
    );
  }
}
