import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/jadwal_model.dart';

class JadwalService {
  List<JadwalModel> jadwal() {
    return [
      JadwalModel(
        id: 0,
          jam: "16 : 00 17 : 30",
          pelajaran: "Matematika",
          guru: "Bu Rina",
          status: "online",
          icon: Icons.calculate_outlined
      ),

      JadwalModel(
        id: 1,
        jam: "18 : 00 19 : 30",
        pelajaran: "Bahasa Inggris",
        guru: "Mr.Budi",
        status: "offline",
        icon: Icons.book,
      ),

      JadwalModel(
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
