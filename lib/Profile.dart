// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables, duplicate_ignore

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                  'assets/xaviera.jpg'), // Sesuaikan path gambar Anda
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
                InfoItem(icon: Icons.logout, text: 'Log out'),
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
  final List<InfoItem> children;

  // ignore: prefer_const_constructors_in_immutables
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

  InfoItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
