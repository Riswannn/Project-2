import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_application_2/kutipan.dart';

class Matkul extends StatelessWidget {
  const Matkul({super.key});
  
  @override
  Widget build(BuildContext context) {
    final List bulan = [
    "Pemograman Perangkat Bergerak",
    "Kuliah Kerja Nyata (KKN)",
    "Manajemen Pengadaan dan Investasi TI",
    "Perencanaan Sumber Daya Perusahaan",
    "Pengukuran Kinerja dan Evalusasi SI",
    "Kontruksi dan Pengujian Perangkat Lunak",
    "Praktek Kerja Lapangan",
  ];
    return  Scaffold(
      appBar: AppBar(
        title: Text("Mata Kuliah"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(bulan[index], style: TextStyle(fontSize: 30)),
                  ),
                );
              },
              itemCount: bulan.length,
            ),
          ),
        TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Kutipan()));
                },
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 102, 255),
                elevation: 0,
          ),
                child: Text('Next',
                style: TextStyle(
                  color: Colors.white,),))
        ],
      ),
    );;
  }
}