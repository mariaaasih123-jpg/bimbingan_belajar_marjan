import 'package:flutter/material.dart';

import '../widget/jadwal_widget_anjani.dart';

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
        backgroundColor: Colors.purpleAccent,
        title: Text("JADWAL"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            JadwalWidget(
              id: 0,
              jam: "16 : 00 17 : 30",
              pelajaran: "Matematika",
              guru: "Bu Rina",
              status: "online",
              icon: Icons.calculate_outlined,
            ),
            JadwalWidget(
              id: 1,
              jam: "18 : 00 19 : 30",
              pelajaran: "Bahasa Inggris",
              guru: "Mr.Budi",
              status: "offline",
              icon: Icons.book,
            ),
            JadwalWidget(
              id: 2,
              jam: "19 : 45 21 : 15",
              pelajaran: "Fisika",
              guru: "Pak Andi",
              status: "online",
              icon: Icons.science_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
