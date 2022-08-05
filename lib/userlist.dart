import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
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
      body: ListView(
        padding:
            const EdgeInsets.only(right: 33, left: 33, top: 50, bottom: 24),
        children: [_list],
      ),
    );
  }
}

Widget _list = Container(
  alignment: Alignment.center,
/*   width: 309,
  height: 60, */
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: const Color(0xffDADADA),
        width: 1,
      )),
  child: ListTile(
    //contentPadding: EdgeInsets.symmetric(horizontal: 40),
    minLeadingWidth: 23,
    leading: Image.asset('images/Ellipse 2.png'),
    title: Text(
      'Marielle da Silvassauro',
      style: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),
    subtitle: Text(
      '@Marielle2022',
      style: GoogleFonts.inter(
        color: const Color(0xFFA8A8A8),
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),
);
