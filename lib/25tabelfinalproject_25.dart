import 'dart:ui';

import 'package:flutter/material.dart';

class HalamanDualima extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanDualima();
}

//TopbarBack
void backbuttonpressed() {
  BuildContext context;
  Navigator.pop(context);
}

class KondisiHalamanDualima extends State<HalamanDualima> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: backbuttonpressed,
            color: Colors.red[900]),
        title: new Center(
            child: new Text(
          "Final Project",
          style: TextStyle(color: Colors.red[900]),
        )),
      ),
      body: SingleChildScrollView(
          child: new Center(
        child: Table(
          border: TableBorder.all(),
          columnWidths: {
            1: FlexColumnWidth(1.5),
          },
          children: [
            TableRow(
              children: [
                Text(
                  'Nama',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'NRP',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'Judul',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  'Muhammad Nur Ady Maulana',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '0721-16-01',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Deteksi Pengemudi Mengantuk Berdasarkan Response Time Menggunakan Skala Tingkat Kantuk Karolinska.',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  'Muhammad Dimas Nugraha Aryatama',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '0721-16-02',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Klasifikasi Pneumothorax pada Citra X-Ray Menggunakan Convolutional Neural Network',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  'Nadhira Neesa Sarasati',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '0721-16-03',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Pengenalan Fase Epilepsi Berbasis Fitur Time Domain Menggunakan Sinyal ECG.',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  'Aisyah Nurul Hidayah',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '0721-16-04',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Segmentasi Tulisan Tangan Latin Menggunakan Metode You Only Look Once (YOLO).',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  'Firdaus Nanda Pradanggaspati',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '0721-16-05',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Klasifikasi Aritmia Pada Sinyal ECG Berbasis Deep Learning',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  'Yordan Yasin',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '0721-16-06',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Deteksi Out of Distribution (OOD) Menggunakan Extreme Value Theory (EVT) pada Klasifikasi Penyakit Kulit.',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            TableRow(
              children: [
                Text(
                  'Izzatul Masruroh',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '0721-16-07',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Pendeteksi Penyakit Aritmia berbasis Prediksi Fitur QRS pada Sinyal ECG dengan Metode Feed Forward Backpropagation menggunakan Sistem Tertanam.',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
