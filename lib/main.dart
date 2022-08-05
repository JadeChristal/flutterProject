import 'package:flutter/material.dart';
import 'package:flutter_project/profile.dart';
import 'package:flutter_project/profileEdit.dart';
import 'package:flutter_project/userlist.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}

Widget drawerMenu(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        ListTile(
          title: Text('Reds',
              style: GoogleFonts.italiana(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: const Color(0xFF2C2263),
              )),
          contentPadding:
              const EdgeInsets.only(left: 26, right: 135, top: 27, bottom: 48),
        ),
        ListTile(
          title: Text(
            'Meu Perfil',
            style:
                GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Profile()));
          },
          contentPadding: const EdgeInsets.only(
            left: 26,
            right: 135,
          ),
        ),
        ListTile(
          title: Text(
            'Lista de usuários',
            style:
                GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const UserList()));
          },
          contentPadding: const EdgeInsets.only(left: 26, right: 135),
        ),
      ],
    ),
  );
}
