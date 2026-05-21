import 'package:bimbingan_belajar_marjan/pages/dasbroad_page.dart';
import 'package:bimbingan_belajar_marjan/pages/jadwal_page.dart';
import 'package:bimbingan_belajar_marjan/pages/student/profile_siswa_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/setting_page.dart';
import 'package:bimbingan_belajar_marjan/pages/tambah_jadwal.dart';
import 'package:bimbingan_belajar_marjan/services/menu_service_anjani.dart';
import 'package:bimbingan_belajar_marjan/widget/jadwal_widget_anjani.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/menu_widget.dart';
import 'auth/login_siswa_anjani.dart';
import 'student/daftar_pengajar_anjani.dart';

class HomePageSiswa extends StatefulWidget {
  const HomePageSiswa({super.key});

  @override
  State<HomePageSiswa> createState() => _HomePageSiswaState();
}

class _HomePageSiswaState extends State<HomePageSiswa> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                    MaterialPageRoute(builder: (context) => JadwalPageSiswa()),
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
        child: Column(
          children: [
            SizedBox(height: 10),
            JadwalWidget(
              id: 0,
              jam: "16 : 00 17 : 30",
              pelajaran: "Matematika",
              guru: "Bu Rina",
              status: "online",
              icon: Icons.calculate_outlined,
            ),
            JadwalWidget(
              id: 1,
              jam: "18 : 00 19 : 30",
              pelajaran: "Bahasa Inggris",
              guru: "Mr.Budi",
              status: "offline",
              icon: Icons.book,
            ),
            JadwalWidget(
              id: 2,
              jam: "19 : 45 21 : 15",
              pelajaran: "Fisika",
              guru: "Pak Andi",
              status: "online",
              icon: Icons.science_rounded,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MENU",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                ),
              ],
            ),
            SizedBox(height: 5),
            Container(
              width: size.width,
              height: 115,
              margin: EdgeInsets.all(20),
              child: GridView.builder(
                itemCount: mn.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: size.width,
                  crossAxisCount: 4,
                  crossAxisSpacing: 2,
                ),
                itemBuilder: (context, i) => MenuWidget(
                  icon: mn[i].icon,
                  title: mn[i].title,
                  color: mn[i].color,
                  page: mn[i].page,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 475,
              height: 200,
              padding: EdgeInsets.all(20),
              child: Container(
                width: size.width,
                height: size.height,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.purple.shade100.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1.5, 1.5),
                      color: Colors.white.withValues(alpha: 20),
                      blurRadius: 5,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PERINGATAN",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 3),
                    Text("Les matematika dimulai pukul"),
                    SizedBox(height: 8),
                    Text(
                      "02  :  18  :  30",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "JAM      MENIT      DETIK",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.timer,size: 20,color: Colors.black,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
