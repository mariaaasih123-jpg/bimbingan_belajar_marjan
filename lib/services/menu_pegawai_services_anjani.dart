import 'package:bimbingan_belajar_marjan/pages/student/detail_pengajar_page_maria.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/absensi_siswa_maria.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/daftar_siswa_maria.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/jadwal_mengajar_page.dart';
import 'package:flutter/material.dart';

import '../model/menu_model_pegawai_anjani.dart';

List<MenuModelPegawai> menuy = [
  MenuModelPegawai(
    icon: Icons.calendar_month,
    title: "Jadwal",
    color: Colors.purpleAccent,
    page: JadwalMengajarPage(),
  ),
  MenuModelPegawai(
    icon: Icons.people,
    title: "Daftar Siswa",
    color: Colors.purpleAccent,
    page: DaftarSiswaMaria(),
  ),
  MenuModelPegawai(
    icon: Icons.task,
    title: "Absensi",
    color: Colors.purpleAccent,
    page: AbsensiSiswaMaria(),
  ),
  MenuModelPegawai(
    icon: Icons.person,
    title: "Profile",
    color: Colors.purpleAccent,
    page: DetailPengajarMaria()
  ),
];
