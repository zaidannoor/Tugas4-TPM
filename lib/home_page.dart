import 'package:flutter/material.dart';
import './data_kelompok.dart';
import './stopwatch_page.dart';
import './website_list.dart';
import './favorite_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _logout() {
    // Navigate to LoginScreen
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('Home Page'),
      )),
      body: Container(
          child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 12),
              Expanded(
                child: Column(
                  children: [
                    Text("List Menu", style: TextStyle(fontSize: 32)),
                    SizedBox(height: 24.0),
                    InkWell(
                      child: Text(
                        'Menu Data Kelompok',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DataKelompok()));
                      },
                    ),
                    SizedBox(height: 10.0),
                    InkWell(
                      child: Text(
                        'Menu Stopwatch',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StopwatchPage()));
                      },
                    ),
                    SizedBox(height: 10.0),
                    InkWell(
                      child: Text(
                        'Menu Daftar Situs',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WebsiteList()));
                      },
                    ),
                    SizedBox(height: 10.0),
                    InkWell(
                      child: Text(
                        'Menu Situs Favorit',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FavoriteList()));
                      },
                    ),
                  ],
                ),
              ),
            ]),
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (index == 0) {
              Navigator.pushReplacementNamed(context, '/home');
            }
            if (index == 1) {
              Navigator.pushReplacementNamed(context, '/bantuan');
            }
            if (index == 2) {
              _logout();
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Bantuan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}
