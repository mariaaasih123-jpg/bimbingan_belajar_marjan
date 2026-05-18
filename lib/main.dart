import 'package:bimbingan_belajar_marjan/pages/auth/login_siswa_anjani.dart';
import 'package:bimbingan_belajar_marjan/pages/dasbroad_page.dart';
import 'package:bimbingan_belajar_marjan/pages/home_page_siswa_anjani.dart';
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
    return MaterialApp(debugShowCheckedModeBanner: false,home: DasbroadPage());
  }
}
