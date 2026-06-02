import 'package:bimbingan_belajar_marjan/pages/auth/pengaturan_pengajar_maria.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/daftar_siswa_maria.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/jadwal_mengajar_page.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/profil_pengajar_maria.dart';
import 'package:bimbingan_belajar_marjan/services/menu_pegawai_services_anjani.dart';
import 'package:bimbingan_belajar_marjan/widget/jadwal_mengajar_widget_anjani.dart';
import 'package:bimbingan_belajar_marjan/widget/menu_pegawai_widget_anjani.dart';
import 'package:flutter/material.dart';

import '../auth/login_siswa_anjani.dart';
import '../auth/pengaturan_maria.dart';
import '../dasbroad_page_anjani.dart';



class HomePagePegawai extends StatefulWidget {
  const HomePagePegawai({super.key});

  @override
  State<HomePagePegawai> createState() => _HomePagePegawaiState();
}

class _HomePagePegawaiState extends State<HomePagePegawai> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Halo,Bu Rina",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Selamat mengajar hari ini!", style: TextStyle(fontSize: 15)),
          ],
        ),
        backgroundColor: Colors.purpleAccent,
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
                Colors.purpleAccent.shade100,
                Colors.purpleAccent.shade400,
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
                    MaterialPageRoute(builder: (context) => DasbroadPage()),
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
                    MaterialPageRoute(
                      builder: (context) => JadwalMengajarPage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.calendar_month, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text(
                      "Jadwal Mengajar",
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
                    MaterialPageRoute(builder: (context) => DaftarSiswaMaria()),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.people_alt, size: 22, color: Colors.purple),
                    SizedBox(width: 10),
                    Text(
                      "Daftar Siswa",
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
                    MaterialPageRoute(builder: (context) => ProfilPengajarMaria()),
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
                    MaterialPageRoute(builder: (context) => PengaturanPengajarMaria()),
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
                    MaterialPageRoute(builder: (context) => LoginSiswaAnjani()),
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
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(10, 15, 10, 15),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 15),
                  Container(
                    width: 200,
                    height: 150,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade100,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.purple),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.people,
                              color: Colors.purpleAccent,
                              size: 30,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "25",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text("SISWA HARI INI", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    width: 200,
                    height: 150,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade100,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.purple),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.room,
                              color: Colors.purpleAccent,
                              size: 30,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "5",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          "TOTAL KELAS HARI INI",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Jadwal Mengajar Hari ini",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lihat Semua",
                    style: TextStyle(color: Colors.purpleAccent),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  JadwalMengajarWidget(
                    id: 0,
                    jam: "16 : 00 17 : 30",
                    pelajaran: "Matematika",
                    guru: "Bu Rina",
                    status: "online",
                    icon: Icons.calculate_outlined,
                  ),
                  JadwalMengajarWidget(
                    id: 1,
                    jam: "18 : 00 19 : 30",
                    pelajaran: "Matematika",
                    guru: "Mr.Budi",
                    status: "offline",
                    icon: Icons.book,
                  ),
                  JadwalMengajarWidget(
                    id: 2,
                    jam: "19 : 45 21 : 15",
                    pelajaran: "Matematika",
                    guru: "Pak Andi",
                    status: "online",
                    icon: Icons.science_rounded,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("MENU", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 5),
              Container(
                width: size.width,
                height: 115,
                margin: EdgeInsets.all(20),
                child: GridView.builder(
                  itemCount: menuy.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: size.width,
                    crossAxisCount: 4,
                    crossAxisSpacing: 2,
                  ),
                  itemBuilder: (context, i) => MenuPegawaiWidget(
                    icon: menuy[i].icon,
                    title: menuy[i].title,
                    color: menuy[i].color,
                    page: menuy[i].page,
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
