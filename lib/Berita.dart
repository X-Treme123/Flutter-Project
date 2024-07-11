// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class BeritaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Berita Terkini',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          BeritaCard(
            imagePath: 'assets/foto3.jpg', // Sesuaikan path gambar Anda
            title: 'Kantor kecamatan yang baru ini dilengkapi dengan berbagai fasilitas modern yang mendukung pelayanan publik, termasuk ruang pelayanan yang nyaman dan terawat.',
          ),
          SizedBox(height: 10),
          BeritaCard(
            imagePath: 'assets/walikota.jpg', // Sesuaikan path gambar Anda
            title: 'Kantor kecamatan yang baru ini dilengkapi dengan berbagai fasilitas modern yang mendukung pelayanan publik, termasuk ruang pelayanan yang nyaman.',
          ),
          SizedBox(height: 10),
          BeritaCard(
            imagePath: 'assets/tumpeng.jpeg', // Sesuaikan path gambar Anda
            title: 'Kantor kecamatan yang baru ini dilengkapi dengan berbagai fasilitas modern dengan berbagai fasilitas modern yang mendukung pelayanan publik.',
          ),
          SizedBox(height: 10),
          BeritaCard(
            imagePath: 'assets/kecamatan.jpeg', // Sesuaikan path gambar Anda
            title: 'Kantor kecamatan yang baru ini dilengkapi dengan berbagai fasilitas modern yang menarik untuk dibahas di kantor kecamatan dengan para warga yang menjadikan tempat tersebut keren.',
          ),
          // Tambahkan BeritaCard lainnya sesuai kebutuhan
        ],
      ),
    );
  }
}

class BeritaCard extends StatelessWidget {
  final String imagePath;
  final String title;

  BeritaCard({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 150,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
