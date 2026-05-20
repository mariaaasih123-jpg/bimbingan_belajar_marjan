
import 'package:bimbingan_belajar_marjan/pages/teacher/absensi_siswa_maria.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/daftar_siswa_maria.dart';
import 'package:bimbingan_belajar_marjan/pages/teacher/pengajar_page_maria.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApk());
}
class MyApk extends StatefulWidget {
  const MyApk({super.key});

  @override
  State<MyApk> createState() => _MyApkState();
}

class _MyApkState extends State<MyApk> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: AbsensiSiswaMaria());
  }
}
