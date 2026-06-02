
import 'package:bimbingan_belajar_marjan/pages/owner/daftar_pengajar_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/owner/detail_owner_maria.dart';
import 'package:bimbingan_belajar_marjan/pages/owner/laporan_pembayaran_anjani_page.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/daftar_siswa_maria.dart';
import 'package:flutter/material.dart';

import '../model/menu__model_owner_anjani.dart';

List<MenuOwnerModel> mn =[
  MenuOwnerModel(icon: Icons.person, title: "Daftar Siswa", page:DaftarSiswaMaria()),
  MenuOwnerModel(icon: Icons.people, title: "Daftar Pengajar", page: DaftarPengajar()),
  MenuOwnerModel(icon: Icons.person, title: "Profile", page: DetailOwnerMaria()),
  MenuOwnerModel(icon: Icons.assignment, title: "Laporan", page:LaporanPembayaranAnjaniPage())
];