import 'package:flutter/material.dart';
import 'persegi.dart';        // Import SquareAreaPage
import 'lingkaran.dart';     // Import CircleAreaPage
import 'profil_pengembang.dart'; // Import DeveloperProfilePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide the debug banner
      title: 'EasyArea',
      theme: ThemeData(
        primarySwatch: Colors.purple, // Set primary color to purple
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyArea'),
        backgroundColor: Colors.purple[600], // Dark Purple AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Tombol Persegi
            Container(
              width: 200, // Lebar lingkaran
              height: 200, // Tinggi lingkaran (menentukan ukuran lingkaran)
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang lingkaran putih
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.purple[300]!, // Border ungu
                  width: 2,
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SquareAreaPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // Membuat tombol transparan di dalam lingkaran
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(0), // Menghilangkan padding dalam tombol
                ),
                child: Text(
                  'Hitung Luas Persegi',
                  style: TextStyle(
                    fontSize: 16, // Ukuran font pas di dalam lingkaran besar
                    color: Colors.purple[600],
                  ),
                  textAlign: TextAlign.center, // Pastikan teks di tengah
                ),
              ),
            ),
            SizedBox(height: 20),
            // Tombol Lingkaran
            Container(
              width: 200, // Lebar lingkaran
              height: 200, // Tinggi lingkaran (menentukan ukuran lingkaran)
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang lingkaran putih
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.purple[300]!, // Border ungu
                  width: 2,
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CircleAreaPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // Membuat tombol transparan di dalam lingkaran
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(0), // Menghilangkan padding dalam tombol
                ),
                child: Text(
                  'Hitung Luas Lingkaran',
                  style: TextStyle(
                    fontSize: 16, // Ukuran font pas di dalam lingkaran besar
                    color: Colors.purple[600],
                  ),
                  textAlign: TextAlign.center, // Pastikan teks di tengah
                ),
              ),
            ),
            SizedBox(height: 20),
            // Tombol Profil Developer
            Container(
              width: 200, // Lebar lingkaran
              height: 200, // Tinggi lingkaran (menentukan ukuran lingkaran)
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang lingkaran putih
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.purple[300]!, // Border ungu
                  width: 2,
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeveloperProfilePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // Membuat tombol transparan di dalam lingkaran
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(0), // Menghilangkan padding dalam tombol
                ),
                child: Text(
                  'Profil Developer',
                  style: TextStyle(
                    fontSize: 16, // Ukuran font pas di dalam lingkaran besar
                    color: Colors.purple[600],
                  ),
                  textAlign: TextAlign.center, // Pastikan teks di tengah
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}