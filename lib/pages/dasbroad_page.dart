import 'package:bimbingan_belajar_marjan/model/dasbroad_model.dart';
import 'package:bimbingan_belajar_marjan/pages/home_page_siswa_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/jadwal_page.dart';
import 'package:bimbingan_belajar_marjan/pages/pembayaran_page.dart';
import 'package:flutter/material.dart';

class DasbroadPage extends StatefulWidget {
  const DasbroadPage({super.key});

  @override
  State<DasbroadPage> createState() => _DasbroadPageState();
}

class _DasbroadPageState extends State<DasbroadPage> {
  int selectedIndex = 0;
  Map<int, DasbroadModel> pages = {
    0: DasbroadModel(
      page: HomePageSiswa(),
      icon: Icons.home,
      label: "BERANDA",
      color: Colors.black,
    ),
    1 : DasbroadModel(
      page: JadwalPage(),
      icon: Icons.task_outlined,
      label: "JADWAL",
      color: Colors.black,
    ),
    2: DasbroadModel(
      page: PembayaranPage(),
      icon: Icons.monetization_on,
      label: "PEMBAYARAN",
      color: Colors.black,
    ),
    0: DasbroadModel(
      page: HomePageSiswa(),
      icon: Icons.home,
      label: "BERANDA",
      color: Colors.black,
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
