import 'package:flutter/material.dart';

class DataKelompok extends StatelessWidget {
  const DataKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Data Kelompok'),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(12),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Data Kelompok",
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Zaidan Noor Irfan",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "123200066",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Muhammad Mi'raj Rizky",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "123200080",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          )),
    );
  }
}
