import 'package:flutter/material.dart';

import 'package:flutter_project/main.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Editar Perfil'),
        actions: const [
          Icon(Icons.account_circle),
          SizedBox(
            width: 20,
          )
        ],
        backgroundColor: const Color(0xFF2C2263),
      ),
      drawer: drawerMenu(context),
    );
  }
}
