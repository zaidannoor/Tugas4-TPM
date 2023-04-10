import 'package:flutter/material.dart';

class BantuanPage extends StatefulWidget {
  const BantuanPage({Key? key}) : super(key: key);

  @override
  State<BantuanPage> createState() => _BantuanPageState();
}

class _BantuanPageState extends State<BantuanPage> {
  int _currentIndex = 1;

  void _logout() {
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Bantuan Page'))),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Cara menggunakan aplikasi",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
            ),            
            
            SizedBox(height: 10),
            Text(
              "1. Login terlebih dahulu",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "2. Pilih Menu yang tersedia",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "3. Jelajahi menu sepuasnya",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "4. Jika sudah dirasa cukup, dapat melakukan logout melalui tombol yang berada di pojok kanan bawah",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
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
