import 'package:bimbingan_belajar_marjan/model/jadwal_mengajar_model_anjani.dart';
import 'package:flutter/material.dart';


class JadwalService {
  List<JadwalMengajarModel> jadwal() {
    return [
      JadwalMengajarModel(
          id: 0,
          jam: "16 : 00 17 : 30",
          pelajaran: "Matematika",
          guru: "Bu Rina",
          status: "online",
          icon: Icons.calculate_outlined
      ),

      JadwalMengajarModel(
        id: 1,
        jam: "18 : 00 19 : 30",
        pelajaran: "Bahasa Inggris",
        guru: "Mr.Budi",
        status: "offline",
        icon: Icons.book,
      ),

      JadwalMengajarModel(
        id: 2,
        jam: "19 : 45 21 : 15",
        pelajaran: "Fisika",
        guru: "Pak Andi",
        status: "online",
        icon: Icons.science_rounded,
      ),
    ];
  }
}
