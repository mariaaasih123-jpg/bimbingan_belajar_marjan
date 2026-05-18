import 'package:bimbingan_belajar_marjan/pages/daftar_pengajar.dart';
import 'package:bimbingan_belajar_marjan/pages/jadwal_page.dart';
import 'package:bimbingan_belajar_marjan/pages/setting_page.dart';
import 'package:flutter/material.dart';

import '../model/menu_model.dart';

List<MenuModel> mn = [
  MenuModel(
    icon: Icons.calendar_month,
    title: "Jadwal",
    color: Colors.black,
    page: JadwalPage(),
  ),
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
];
