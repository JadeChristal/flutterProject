import 'package:flutter/material.dart';
import 'package:flutter_project/profile.dart';
import 'package:flutter_project/userlist.dart';
import 'package:flutter_project/profileEdit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'menu',
      routes: {
        'menu': (context) => const MenuScreen(),
        'editProfileScreen': (context) => const EditProfileScreen(),
        'userListScreen': (context) => const UserListScreen(),
        'profileScreen': (context) => const ProfileScreen(),
      },
    );
  }
}

// Screen1
class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF2C2263),
          title: const Text('Futuro menu'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: const Text('Edit'),
                onPressed: () {
                  //print('Clicked on screen 1 button');
                  Navigator.pushNamed(context, 'editProfileScreen');
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                child: const Text('userListScreen'),
                onPressed: () {
                  //print('Clicked on screen 1 button');
                  Navigator.pushNamed(context, 'userListScreen');
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                child: const Text('profile'),
                onPressed: () {
                  //print('Clicked on screen 1 button');
                  Navigator.pushNamed(context, 'profileScreen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Screen2
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reds',
      home: ProfileEdit(),
    );
  }
}

class UserListScreen extends StatelessWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reds',
      home: UserList(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reds',
      home: Profile(),
    );
  }
}
