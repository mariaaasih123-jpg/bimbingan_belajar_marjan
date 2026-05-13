import 'package:bimbingan_belajar_marjan/pages/profile_page.dart';
import 'package:bimbingan_belajar_marjan/pages/setting_page.dart';
import 'package:bimbingan_belajar_marjan/pages/tambah_jadwal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'auth/login_siswa_anjani.dart';
import 'daftar_pengajar.dart';
import 'jadwal_page.dart';

class HomePageSiswa extends StatefulWidget {
  const HomePageSiswa({super.key});

  @override
  State<HomePageSiswa> createState() => _HomePageSiswaState();
}

class _HomePageSiswaState extends State<HomePageSiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hai, Mariasih",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text("Semangat belajar hari ini", style: TextStyle(fontSize: 10)),
          ],
        ),
      ),
      drawer: Drawer(
        elevation: 5,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.purple.shade50,
                Colors.purple.shade400,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePageSiswa()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.home_outlined, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JadwalPage()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.calendar_month, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text(
                      "Jadwal",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DaftarPengajar()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.people_alt, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text(
                      "Daftar Pengajar",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TambahJadwal()),
                  );
                },
                child: Row(
                  children: [
                    Icon(CupertinoIcons.plus, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text(
                      "Tambah Jadwal",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.person, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text(
                      "Profile",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingPage()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.settings, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text(
                      "Pengaturan",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginSiswa()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.logout, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text(
                      "Log out",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "14 : 55 - "
                    "15 :00 ",
                  ),
                  SizedBox(height: 10, width: 10),
                  Icon(Icons.calculate_rounded, color: Colors.purple, size: 60),
                  SizedBox(height: 10, width: 10),
                  Text(
                    "MATEMATIKA",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Bu rina", style: TextStyle(fontSize: 10)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "14 : 55 - "
                      "15 :00 ",
                ),
                SizedBox(height: 10, width: 10),
                Icon(Icons.calculate_rounded, color: Colors.purple, size: 60),
                SizedBox(height: 10, width: 10),
                Text(
                  "MATEMATIKA",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Bu rina", style: TextStyle(fontSize: 10)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "14 : 55 - "
                      "15 :00 ",
                ),
                SizedBox(height: 10, width: 10),
                Icon(Icons.calculate_rounded, color: Colors.purple, size: 60),
                SizedBox(height: 10, width: 10),
                Text(
                  "MATEMATIKA",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Bu rina", style: TextStyle(fontSize: 10)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
