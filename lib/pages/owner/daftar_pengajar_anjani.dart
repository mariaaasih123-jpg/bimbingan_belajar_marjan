import 'package:bimbingan_belajar_marjan/widget/pengajar_widget_anjani.dart';
import 'package:flutter/material.dart';

class DaftarPengajar extends StatefulWidget {
  const DaftarPengajar({super.key});

  @override
  State<DaftarPengajar> createState() => _DaftarPengajarState();
}
//
class _DaftarPengajarState extends State<DaftarPengajar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        title: Text(
          "DAFTAR PENGAJAR",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          PengajarWidget(
            nama: "BU YANA",
            notlp: "0897-8637-8713",
            mapel: "BAHASA INGRISS",
            gmbar: "assets/images/guru.png",
          ),
          PengajarWidget(
            nama: "P YONO",
            notlp: "0897-8656-8713",
            mapel: "BAHASA JAWA",
            gmbar: "assets/images/guru.png",
          ),
          PengajarWidget(
            nama: "PAK AGUS",
            notlp: "0897-8637-8713",
            mapel: "IPA",
            gmbar: "assets/images/guru.png",
          ),
          PengajarWidget(
            nama: "BU AINI",
            notlp: "0897-8637-8713",
            mapel: "AGAMA",
            gmbar: "assets/images/guru.png",
          ),
        ],
      ),
    );
  }
}
