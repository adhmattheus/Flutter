// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:app_crud/models/user.dart';
import 'package:app_crud/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:app_crud/components/user_tile.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
