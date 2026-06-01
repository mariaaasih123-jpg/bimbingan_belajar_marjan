import 'package:flutter/material.dart';

import '../../widget/jadwal_mengajar_widget_anjani.dart';

class JadwalMengajarPage extends StatefulWidget {
  const JadwalMengajarPage({super.key});

  @override
  State<JadwalMengajarPage> createState() => _JadwalMengajarPageState();
}

class _JadwalMengajarPageState extends State<JadwalMengajarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(
          "JADWAL MENGAJAR",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          JadwalMengajarWidget(
            id: 0,
            jam: "16 : 00 17 : 30",
            pelajaran: "Matematika",
            guru: "Bu Rina",
            status: "online",
            icon: Icons.calculate_outlined,
          ),
          JadwalMengajarWidget(
            id: 1,
            jam: "18 : 00 19 : 30",
            pelajaran: "Bahasa Inggris",
            guru: "Mr.Budi",
            status: "offline",
            icon: Icons.book,
          ),
          JadwalMengajarWidget(
            id: 2,
            jam: "19 : 45 21 : 15",
            pelajaran: "Fisika",
            guru: "Pak Andi",
            status: "online",
            icon: Icons.science_rounded,
          ),
        ],
      ),
    );
  }
}
