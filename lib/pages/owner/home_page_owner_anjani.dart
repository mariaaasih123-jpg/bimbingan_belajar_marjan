
import 'package:bimbingan_belajar_marjan/pages/auth/login_siswa_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/owner/detail_owner_maria.dart';
import 'package:bimbingan_belajar_marjan/widget/menu_owner_widget_anjani.dart';
import 'package:flutter/material.dart';
import '../teacher/daftar_siswa_maria.dart';
import 'daftar_pengajar_anjani.dart';
import 'laporan_pembayaran_anjani_page.dart';

class HomePageOwnerAnjani extends StatefulWidget {
  const HomePageOwnerAnjani({super.key});

  @override
  State<HomePageOwnerAnjani> createState() => _HomePageOwnerAnjaniState();
}

class _HomePageOwnerAnjaniState extends State<HomePageOwnerAnjani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hai,Owner",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Selamat datang kembali!", style: TextStyle(fontSize: 15)),
          ],
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 25),
                  Container(
                    width: 160,
                    height: 170,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
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
                              "75",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text("TOTAL SISWA", style: TextStyle(fontSize: 25)),
                      ],
                    ),
                  ),
                  SizedBox(width: 100),
                  Container(
                    width: 160,
                    height: 170,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person,
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
                        Text("TOTAL PENGAJAR", style: TextStyle(fontSize: 25)),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsGeometry.fromLTRB(10, 15, 10, 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 15),
                        Container(
                          width: 160,
                          height: 170,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
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
                                "Jadwal Hari ini",
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 100),
                        Container(
                          width: 160,
                          height: 170,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.analytics_outlined,
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
                              Text("Kelas AKtif", style: TextStyle(fontSize: 25)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  MenuOwnerWidget(
                    icon: Icons.person,
                    title: "Daftar Siswa",
                    page: DaftarSiswaMaria(),
                  ),
                  MenuOwnerWidget(
                    icon: Icons.people,
                    title: "Daftar Pengajar",
                    page: DaftarPengajar(),
                  ),
                  MenuOwnerWidget(
                    icon: Icons.person,
                    title: "Profile",
                    page: DetailOwnerMaria(),
                  ),
                  MenuOwnerWidget(
                    icon: Icons.assignment,
                    title: "Laporan",
                    page: LaporanPembayaranAnjaniPage(),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      alignment: Alignment.centerLeft,
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      backgroundColor: WidgetStatePropertyAll(Colors.purple.shade400),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginSiswaAnjani(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.logout, color: Colors.black),
                        SizedBox(width: 10),
                        Text(
                          "Log out",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
