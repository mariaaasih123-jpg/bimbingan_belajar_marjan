import 'package:bimbingan_belajar_marjan/model/dasbroad_model_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/auth/pengaturan_maria.dart';
import 'package:bimbingan_belajar_marjan/pages/home_page_siswa_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/jadwal_page_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/owner/pembayaran_page_maria.dart';
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
    1: DasbroadModel(
      page: JadwalPageSiswa(),
      icon: Icons.task_outlined,
      label: "JADWAL",
      color: Colors.black,
    ),
    2: DasbroadModel(
      page: PembayaranPageMaria(),
      icon: Icons.monetization_on,
      label: "PEMBAYARAN",
      color: Colors.black,
    ),
    3: DasbroadModel(
      page: PengaturanMaria(),
      icon: Icons.settings,
      label: "PENGATURAN",
      color: Colors.black,
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        elevation: 5,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: pages.entries
            .map(
              (e) => BottomNavigationBarItem(
                icon: Icon(e.value.icon, color: Colors.purple),
                activeIcon: Icon(e.value.icon, color: e.value.color),
                label: e.value.label,
                backgroundColor: Colors.purpleAccent,
              ),
            )
            .toList(),
      ),
      body: pages[selectedIndex]!.page,
    );
  }
}
