import 'package:bimbingan_belajar_marjan/pages/home_page_siswa_anjani.dart';
import 'package:bimbingan_belajar_marjan/widget/pengaturan_widget_maria.dart';
import 'package:flutter/material.dart';

class PengaturanMaria extends StatelessWidget {
  const PengaturanMaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          "Pengaturan",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(child:
      Container(
        width: double.infinity,
        padding:EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('assets/images/logo.jpeg'),
            ),
            SizedBox(height: 15),
            Text(
              "Aurellia bella",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text("aureliabellaa@email.com"),
            SizedBox(height: 25),
            PengaturanWidgetMaria(icon: Icons.person_outline, title: "Profil"),
            PengaturanWidgetMaria(
              icon: Icons.lock_outline,
              title: "Ganti Kata Sandi",
            ),
            PengaturanWidgetMaria(icon: Icons.language, title: "Bahasa"),
            PengaturanWidgetMaria(
              icon: Icons.notifications_none,
              title: "Notifikasi",
            ),

            PengaturanWidgetMaria(
              icon: Icons.help_outline,
              title: "Bantuan & Dukungan",
            ),

            PengaturanWidgetMaria(
              icon: Icons.info_outline,
              title: "Tentang Aplikasi",
            ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageSiswa(),
                    ),
                  );
                },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Keluar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
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
