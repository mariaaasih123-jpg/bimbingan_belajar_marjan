import 'package:bimbingan_belajar_marjan/widget/info_pembayaran_maria.dart';
import 'package:bimbingan_belajar_marjan/widget/metode_pembayaran_maria.dart';

import 'package:flutter/material.dart';

class PembayaranPageMaria extends StatelessWidget {
  const PembayaranPageMaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text(
          "Pembayaran",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoPembayaranMaria(),
            SizedBox(height: 30),
            MetodePembayaranMaria(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {},
                child: Text(
                  "Bayar Sekarang",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
