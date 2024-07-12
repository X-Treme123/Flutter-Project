// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'HomePage.dart'; // Import HomePage

class SchedulingScreen extends StatefulWidget {
  @override
  _SchedulingScreenState createState() => _SchedulingScreenState();
}

class _SchedulingScreenState extends State<SchedulingScreen> {
  int selectedService = 0;
  DateTime selectedDate = DateTime.now();

  List<String> services = ['Perpajakan', 'Perizinan', 'Laporan', 'Pendudukan'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Isi Pelayanan',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.sentiment_dissatisfied),
                      Text('Regist Pelayanan\nSesuai Ketentuan'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.sentiment_neutral),
                      Text('Atur Jadwal Sesuai\n   Keinginan Anda'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.sentiment_satisfied),
                      Text('Buat Jadwal\n  Registrasi'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Regist Pelayanan',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(services.length, (index) {
                  return Expanded(
                    child: Column(
                      children: [
                        Radio(
                          value: index,
                          groupValue: selectedService,
                          onChanged: (int? value) {
                            setState(() {
                              selectedService = value!;
                            });
                          },
                        ),
                        Text(services[index]),
                      ],
                    ),
                  );
                }),
              ),
              SizedBox(height: 30),
              Text(
                'Atur Jadwal',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              CalendarDatePicker(
                initialDate: selectedDate,
                firstDate: DateTime(2023),
                lastDate: DateTime(2025),
                onDateChanged: (date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF17348D),
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Isi Pelayanan',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
