import 'package:bimbingan_belajar_marjan/services/daftar_siswa_service_maria.dart';
import 'package:bimbingan_belajar_marjan/widget/daftar_siswa_widget_maria.dart';
import 'package:flutter/material.dart';

class DaftarSiswaMaria extends StatelessWidget {
  const DaftarSiswaMaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 10),
                  Text(
                    'Daftar Siswa',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: 700,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                        hintText: 'Cari Siswa...',
                      ),
                    ),
                  ),
                  SizedBox(height: 25),

                  SizedBox(
                    height: 550,
                    child: ListView.builder(
                      itemCount: kiw.length,
                      itemBuilder: (context, i) => DaftarSiswaWidgetMaria(
                        image: kiw[i].image,
                        name: kiw[i].name,
                        kelas: kiw[i].kelas,
                        paket: kiw[i].paket,
                        status: kiw[i].status,
                      ),
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
