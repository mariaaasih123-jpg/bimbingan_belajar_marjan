import 'package:bimbingan_belajar_marjan/pages/auth/pengaturan_maria.dart';
import 'package:bimbingan_belajar_marjan/pages/jadwal_page_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/owner/daftar_pengajar_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/detail_siswa_maria.dart';
import 'package:flutter/material.dart';

import '../model/menu_model_anjani.dart';

List<MenuModel> mn = [
  MenuModel(
    icon: Icons.calendar_month,
    title: "Jadwal",
    color: Colors.black,
    page: JadwalPageSiswa(),
  ),//
  MenuModel(
    icon: Icons.people,
    title: "Pengajar",
    color: Colors.black,
    page: DaftarPengajar(),
  ),
  MenuModel(
    icon: Icons.settings,
    title: "Pengaturan",
    color: Colors.black,
    page: PengaturanMaria(),
  ),
  MenuModel(
    icon: Icons.person,
    title: "Profile",
    color: Colors.black,
    page: DetailSiswaMaria(),
  ),
];
