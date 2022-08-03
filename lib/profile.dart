import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2C2263),
      ),
      drawer: drawerMenu(context),
    );
  }
}
