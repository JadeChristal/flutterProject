import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
import 'package:google_fonts/google_fonts.dart';

List<Map> list = [
  {
    'image': 'images/Ellipse 2.png',
    'name': 'Marielle da Silvassauro',
    'email': '@Marielle2022'
  },
  {'image': 'images/Ellipse 3.png', 'name': 'Maria Eduarda', 'email': '@Madu'},
  {
    'image': 'images/Ellipse 4.png',
    'name': 'Giovanna Melo',
    'email': "@Giomello"
  },
  {
    'image': 'images/Ellipse 5.png',
    'name': 'João Pedro Freitas',
    'email': '@jpedro'
  },
  {
    'image': 'images/Ellipse 6.png',
    'name': 'Cristiane Siqueira',
    'email': '@Cris_siqueira'
  },
  {
    'image': 'images/Ellipse 7.png',
    'name': 'André Fernandes',
    'email': '@De2532'
  },
  {
    'image': 'images/Ellipse 8.png',
    'name': 'Alissa Marques',
    'email': '@Alimarques'
  },
];

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
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle_outlined),
              tooltip: 'Account',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Nada aqui por enquanto')));
              },
            ),
          ],
        ),
        drawer: drawerMenu(context),
        body: Container(
          margin: const EdgeInsets.only(top: 56),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children: [_userList],
          ),
        ));
  }
}

Widget _userList = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: list
      .map((value) => _list(value['image'], value['name'], value['email']))
      .toList(),
);

Container _list(String userPhoto, String userName, String userNickname) {
  return Container(
    margin: const EdgeInsets.only(bottom: 24),
    alignment: Alignment.center,
    height: 60,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: const Color(0xffDADADA),
          width: 1,
        )),
    child: ListTile(
      minLeadingWidth: 23,
      leading: Image.asset(userPhoto),
      title: Text(
        userName,
        style: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Text(
        userNickname,
        style: GoogleFonts.inter(
          color: const Color(0xFFA8A8A8),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
