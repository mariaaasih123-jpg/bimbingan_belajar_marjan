import 'package:bimbingan_belajar_marjan/widget/baris_info_maria.dart';
import 'package:flutter/material.dart';

class InfoPembayaranMaria extends StatelessWidget {
  const InfoPembayaranMaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tagihan Pembayaran",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          BarisInfoMaria(judul: "Paket", isi: "Reguler 16x"),
          SizedBox(height: 12),
          BarisInfoMaria(judul: "Total Tagihan", isi: "Rp1.200.000"),
          SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Status",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text("Belum Lunas", style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
