import 'package:flutter/material.dart';
import 'package:flutter_project/profile.dart';
import 'package:flutter_project/userlist.dart';
import 'package:google_fonts/google_fonts.dart';

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
      drawer: Drawer(
        child: ListView(
            padding: const EdgeInsets.only(top: 40, left: 26),
            children: [
              ListTile(
                title: Text(
                  'Reds',
                  style: GoogleFonts.italiana(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff2C2263)),
                ),
              ),
              ListTile(
                title: Text(
                  'Meu Perfil',
                  style: GoogleFonts.roboto(),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
              ),
              ListTile(
                title: Text(
                  'Lista de Usuário',
                  style: GoogleFonts.roboto(),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserList()));
                },
              ),
            ]),
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [],
          )),
    );
  }
}

Widget editElements = Container(
  alignment: Row(
    children: [
      Column(
        children: [],
      )
    ],
  ),
);
