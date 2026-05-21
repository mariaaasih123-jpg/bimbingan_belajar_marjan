import 'package:bimbingan_belajar_marjan/pages/student/daftar_pengajar_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/student/profile_siswa_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/setting_page.dart';
import 'package:bimbingan_belajar_marjan/pages/tambah_jadwal.dart';
import 'package:flutter/material.dart';

import '../model/menu_model.dart';

List<MenuModel> mn = [
  MenuModel(
    icon: Icons.calendar_month,
    title: "Jadwal",
    color: Colors.black,
    page: TambahJadwal(),
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
    page: SettingPage(),
  ),
  MenuModel(
    icon: Icons.person,
    title: "Profile",
    color: Colors.black,
    page: ProfilePage(),
  ),
];
