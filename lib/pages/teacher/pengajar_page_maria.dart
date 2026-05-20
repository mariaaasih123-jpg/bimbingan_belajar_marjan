import 'package:bimbingan_belajar_marjan/widget/jadwal_pengajar_maria.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PengajarPageMaria extends StatefulWidget {
  const PengajarPageMaria({super.key});

  @override
  State<PengajarPageMaria> createState() => _PengajarPageMariaState();
}

class _PengajarPageMariaState extends State<PengajarPageMaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemPurple,
        title: Text(
          'Jadwal Pengajar',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        actions: [Icon(CupertinoIcons.calendar, color: Colors.black, size: 30)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            JadwalPengajarMaria(
              id: 0,
              jam: '16:00-17.00',
              pelajaran: 'Matematika',
              guru: 'Agustin',
              icon: Icons.import_contacts_rounded,
              status: 'online',
            ),
            JadwalPengajarMaria(
              id: 1,
              jam: '13:00-15.00',
              pelajaran: 'Ipas',
              guru: 'Sumarto aryano',
              icon: Icons.import_contacts_rounded,
              status: 'online',
            ),
            JadwalPengajarMaria(
              id: 2,
              jam: '12:00-14.00',
              pelajaran: 'Bahasa Inggris',
              guru: 'Velyanti',
              icon: Icons.import_contacts_rounded,
              status: 'Ofline',
            ),
            JadwalPengajarMaria(
              id: 3,
              jam: '10:00-11.00',
              pelajaran: 'Bahasa jawa',
              guru: 'Rahman anjani',
              icon: Icons.import_contacts_rounded,
              status: 'online',
            ),
          ],
        ),
      ),
    );
  }
}