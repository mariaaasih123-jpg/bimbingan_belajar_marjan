import 'package:bimbingan_belajar_marjan/widget/info_card_maria.dart';
import 'package:bimbingan_belajar_marjan/widget/jdwl_card_widget_maria.dart';
import 'package:flutter/material.dart';

class DetailSiswaMaria extends StatelessWidget {
  const DetailSiswaMaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Icon(Icons.arrow_back, color: Colors.black, size: 20),
        title: Text(
          "Detail Siswa",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/images/logo.jpeg'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Maria",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text("Kelas Reguler", style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Informasi",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              InfoCardMaria(
                  title: "No. Telepon",
                  subtitle: "08997-6576-7477"
              ),
              SizedBox(height: 15),
              InfoCardMaria(
                title: "Alamat Rumah",
                subtitle: "Jln. Surabaya rt 1 rw 2",
              ),
              SizedBox(height: 15),
              InfoCardMaria(
                  title: "Paket Les",
                  subtitle: "Reguler 12x"
              ),
              SizedBox(height: 15),
              InfoCardMaria(
                  title: "Sisa Pertemuan",
                  subtitle: "3x"
              ),
              SizedBox(height: 30),
              Text(
                "Jadwal Les",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),
              JdwlCardWidgetMaria(
                title: "Fisika",
                date: "Senin, 3 Mei 2024",
                time: "16:00 - 17:00",
              ),

              SizedBox(height: 15),
              JdwlCardWidgetMaria(
                title: "Matematika",
                date: "Rabu, 15 Mei 2024",
                time: "13:30 - 14:00",
              ),
              SizedBox(height: 15),
              JdwlCardWidgetMaria(
                title: "Matematika",
                date: "senin, 2 Aprl 2024",
                time: "10:30 - 11:00",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
