import 'package:flutter/material.dart';

class DeveloperProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil Developer')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            color: Colors.white,
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person, color: Colors.purple[600], size: 30),
                      SizedBox(width: 10),
                      Text(
                        'Profil Developer',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple[600],
                        ),
                      ),
                    ],
                  ),
                  Divider(color: Colors.purple[300]),
                  SizedBox(height: 10),
                  _buildProfileInfo('Nama:', 'Aulia Kesuma Dewi'),
                  _buildProfileInfo('NIM:', '2410020117'),
                  _buildProfileInfo('Kelas:', 'SI 5A NR BJM'),
                  _buildProfileInfo('Kontak:', '087823960405'),
                  _buildProfileInfo('Alamat:', 'Jl. Sultan Adam Ko Kadar Permai 2 Jalur 2 H Idiris Kunang No 33'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 10),
          Text(value),
        ],
      ),
    );
  }
}