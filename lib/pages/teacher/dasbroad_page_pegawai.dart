import 'package:bimbingan_belajar_marjan/model/dasbroad_model_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/home_page_pegawai_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/jadwal_mengajar_page.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/profil_pengajar_maria.dart';

import 'package:flutter/material.dart';

import '../auth/pengaturan_maria.dart';

class DasbroadPegawaiPage extends StatefulWidget {
  const DasbroadPegawaiPage({super.key});

  @override
  State<DasbroadPegawaiPage> createState() => _DasbroadPegawaiPageState();
}

class _DasbroadPegawaiPageState extends State<DasbroadPegawaiPage> {
  int selectedIndex = 0;
  Map<int, DasbroadPegawaiModel> pages = {
    0: DasbroadPegawaiModel(
      page: HomePagePegawai(),
      icon: Icons.home,
      label: "BERANDA",
      color: Colors.black,
    ),
    1: DasbroadPegawaiModel(
      page: JadwalMengajarPage(),
      icon: Icons.task_outlined,
      label: "JADWAL",
      color: Colors.black,
    ),
    2: DasbroadPegawaiModel(
      page: ProfilPengajarMaria(),
      icon: Icons.person,
      label: "Profile",
      color: Colors.black,
    ),
    3: DasbroadPegawaiModel(
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
