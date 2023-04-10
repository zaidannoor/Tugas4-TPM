import 'package:flutter/material.dart';
import './login_page.dart';
import './home_page.dart';
import 'bantuan_page.dart';
import 'package:provider/provider.dart';
import 'favorite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: MaterialApp(
        title: 'Tugas 4 TPM',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginPage(),
        routes: {
          '/login': (context) => LoginPage(),
          '/bantuan': (context) => BantuanPage(),
          '/home': (context) => HomePage(),
        },
      ),
    );
    // return MaterialApp(
    //   title: 'Tugas 4 TPM',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: const HomePage(),
    //   routes: {
    //     '/login': (context) => LoginPage(),
    //     '/bantuan': (context) => BantuanPage(),
    //     '/home': (context) => HomePage(),
    //   },
    // );
  }
}
