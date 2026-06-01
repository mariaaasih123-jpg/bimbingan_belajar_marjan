import 'package:bimbingan_belajar_marjan/pages/owner/riwayat_pembayaran_anjani.dart';
import 'package:flutter/material.dart';

class LaporanPembayaranAnjaniPage extends StatefulWidget {
  const LaporanPembayaranAnjaniPage({super.key});

  @override
  State<LaporanPembayaranAnjaniPage> createState() =>
      _LaporanPembayaranAnjaniPageState();
}

class _LaporanPembayaranAnjaniPageState
    extends State<LaporanPembayaranAnjaniPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Laporan Owner",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.task_outlined, size: 50, color: Colors.purple),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LAPORAN",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Ringkasan data dan informasi pembayaran",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.purpleAccent.shade100.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people, size: 20),
                          SizedBox(width: 5),
                          Text("Total Siswa"),
                        ],
                      ),
                      Text("75", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person, size: 20),
                          SizedBox(width: 5),
                          Text("Total pengajar"),
                        ],
                      ),
                      Text("25", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_month, size: 20),
                          SizedBox(width: 5),
                          Text("Total Jadwal"),
                        ],
                      ),
                      Text("8", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.payment, size: 20),
                          SizedBox(width: 5),
                          Text("Total Transaksi"),
                        ],
                      ),
                      Text("18", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 470,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
                color: Colors.purple.shade200.withValues(alpha: 0.4),
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.all(15),
                child: Row(
                  children: [
                    Icon(Icons.monetization_on, size: 60, color: Colors.black),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "LAPORAN KEUANGAN",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text("5.000.000.00", style: TextStyle(fontSize: 15)),
                        Text(
                          "Total Pendapatan dari transaksi",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(Colors.purple.shade100),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RiwayatPembayaranAnjani(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.assignment_outlined, color: Colors.black),
                  SizedBox(width: 10),
                  Text(
                    "Riwayat Pembayaran/ Transaksi",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
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
