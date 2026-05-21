import 'package:bimbingan_belajar_marjan/pages/home_page_siswa_anjani.dart';
import 'package:flutter/material.dart';

class LaporanPembayaranMariaPage extends StatelessWidget {
  const LaporanPembayaranMariaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.all(16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageSiswa(),));
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Laporan Owner",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
