import 'package:bimbingan_belajar_marjan/services/absensi_service_maria.dart';
import 'package:flutter/material.dart';

class AbsensiSiswaMaria extends StatelessWidget {
  const AbsensiSiswaMaria({super.key});

  Color warnaStatus(String status) {
    if (status == "Hadir") {
      return Colors.blue;
    }

    if (status == "Izin") {
      return Colors.yellowAccent;
    }

    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,

        leading: Icon(Icons.arrow_back, color: Colors.black, size: 35),

        title: Text(
          "Absensi siswa",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,
      ),

      body: SingleChildScrollView(
       child: Padding(padding: EdgeInsets.all(20),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kelas : Matematika",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 5),

            Text("Senin, 3 Mei 2023", style: TextStyle(fontSize: 18)),

            SizedBox(height: 30),

            ListView.builder(
              shrinkWrap: true,
              itemCount: absen.length,

              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(15),

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),

                  borderRadius: BorderRadius.circular(20),
                ),

                child: Row(
                  children: [
                    CircleAvatar(radius: 25, backgroundImage: AssetImage(absen[index].image),),

                    SizedBox(width: 20),

                    Text(
                      absen[index].name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 90),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),

                      decoration: BoxDecoration(
                        color: warnaStatus(absen[index].status),

                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        absen[index].status,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
