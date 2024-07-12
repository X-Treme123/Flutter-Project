// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'login.dart'; // Pastikan Anda mengimpor halaman Login di sini

class ProfilePage extends StatelessWidget {
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi Logout'),
          content: Text('Apakah Anda yakin ingin logout?'),
          actions: <Widget>[
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
              },
            ),
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                ); // Pindah ke halaman login
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/xaviera.jpg'), // Sesuaikan path gambar Anda
            ),
            SizedBox(height: 20),
            InfoCard(
              title: 'Informasi Pengguna',
              children: [
                InfoItem(icon: Icons.phone, text: '123456789'),
                InfoItem(icon: Icons.person, text: 'Mine'),
                InfoItem(icon: Icons.email, text: 'example@gmail.com'),
              ],
            ),
            SizedBox(height: 20),
            InfoCard(
              title: 'Informasi Lain',
              children: [
                InfoItem(icon: Icons.contact_mail, text: 'Hubungi Kami'),
                InfoItem(icon: Icons.lock, text: 'Ganti Password'),
                InfoItem(icon: Icons.headset_mic, text: 'Service'),
                InfoItem(icon: Icons.help, text: 'Bantu'),
                InfoItem(
                  icon: Icons.logout,
                  text: 'Log out',
                  onTap: () {
                    _showLogoutDialog(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  InfoCard({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Column(children: children),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap; // Tambahkan onTap untuk menangani klik

  InfoItem({required this.icon, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Tambahkan onTap di sini
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(icon, color: Colors.black54),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
