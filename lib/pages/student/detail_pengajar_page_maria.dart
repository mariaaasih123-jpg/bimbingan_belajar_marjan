import 'package:bimbingan_belajar_marjan/services/pengajar_service_maria.dart';
import 'package:bimbingan_belajar_marjan/widget/detail_pengajar_widget_maria.dart';
import 'package:flutter/material.dart';

class DetailPengajarMaria extends StatelessWidget {
  const DetailPengajarMaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(
          "Detail Pengajar",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(hemm.first.image),
                  ),

                  SizedBox(width: 20),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hemm.first.nama,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(hemm.first.mapel, style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),

              Text(
                "Informasi",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    DetailPengajarWidgetMaria(
                      icon: Icons.phone,
                      text: hemm.first.telepon,
                    ),

                    DetailPengajarWidgetMaria(
                      icon: Icons.email,
                      text: hemm.first.email,
                    ),

                    DetailPengajarWidgetMaria(
                      icon: Icons.location_on,
                      text: hemm.first.alamat,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              Row(
                children: [
                  Icon(Icons.info_outline),

                  SizedBox(width: 10),

                  Text(
                    "Deskripsi",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Text(hemm.first.deskripsi, style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
