import 'package:flutter/material.dart';

class DaftarSiswaMaria extends StatelessWidget {
  const DaftarSiswaMaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.arrow_back, size: 28),
                  SizedBox(width: 10),
                  Text(
                    "Daftar siswa",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 700,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: TextField(
                        decoration: InputDecoration(icon: Icon(Icons.search)),
                      ),
                    ),
                    SizedBox(height: 25),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
