import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2C2263),
        toolbarHeight: 50,
        centerTitle: true,
        title: Text(
          'Lista de Usuários',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              // onPressed: () {
              // Scaffold.of(context).openDrawer();
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            tooltip: 'Account',
            onPressed: () {
              Navigator.pop(context);
            },
            //child: const Text('Go back!'),

            /* onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Nada aqui por enquanto')));
            },*/
          ),
        ],
      ),
    );
  }
}
