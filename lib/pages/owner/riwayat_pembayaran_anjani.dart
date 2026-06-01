import 'package:bimbingan_belajar_marjan/widget/riwayat_pembayaran_widget_anjani.dart';
import 'package:flutter/material.dart';

class RiwayatPembayaranAnjani extends StatefulWidget {
  const RiwayatPembayaranAnjani({super.key});

  @override
  State<RiwayatPembayaranAnjani> createState() =>
      _RiwayatPembayaranAnjaniState();
}

class _RiwayatPembayaranAnjaniState extends State<RiwayatPembayaranAnjani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Riwayat Pembawayaran",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Column(
          children: [
            Container(
              width: 475,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade400,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.black,
                    size: 80,
                  ),
                  SizedBox(height: 10, width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ringkasan Pebayaran",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5, width: 40),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("Total siswa"),
                              Text(
                                "75",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 40),
                          Column(
                            children: [
                              Text("Lunas"),
                              Text(
                                "12",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 40),
                          Column(
                            children: [
                              Text("Belum Lunas"),
                              Text(
                                "12",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 475,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: "Cari siswa....",
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      RiwayatPembayaranWidgetAnjani(
                        nama: "MARIASIH",
                        paket: "Reguler",
                        harga: "1.000.000",
                        status: "Aktif",
                        gmbr: "assets/images/murid.png",
                      ),
                      RiwayatPembayaranWidgetAnjani(
                        nama: "Anjani",
                        paket: "Reguler",
                        harga: "1.000.000",
                        status: "TidakAktif",
                        gmbr: "assets/images/murid.png",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
