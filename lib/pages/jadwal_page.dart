import 'package:flutter/material.dart';

class JadwalPageSiswa extends StatefulWidget {
  const JadwalPageSiswa({super.key});

  @override
  State<JadwalPageSiswa> createState() => _JadwalPageSiswaState();
}

class _JadwalPageSiswaState extends State<JadwalPageSiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JADWAL",),
      ),
    );
  }
}
