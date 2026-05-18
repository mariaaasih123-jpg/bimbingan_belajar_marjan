import 'package:bimbingan_belajar_marjan/pages/auth/login_pengajar_maria.dart';
import 'package:bimbingan_belajar_marjan/pages/auth/login_siswa_anjani.dart';
import 'package:flutter/material.dart';

class SelectPageMaria extends StatefulWidget {
  const SelectPageMaria({super.key});

  @override
  State<SelectPageMaria> createState() => _SelectPageMariaState();
}

class _SelectPageMariaState extends State<SelectPageMaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple.shade400, Colors.purple.shade100],
            begin: Alignment.topCenter,
            end: Alignment.center,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              "MASUK SEBAGAI",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusGeometry.circular(26),
                    border: Border.all(color: Colors.blueAccent, width: 2),
                    boxShadow: [BoxShadow(blurRadius: 7, offset: Offset(0, 3))],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginSiswaAnjani(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.school,
                          size: 45,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Text(
                        "SISWA",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusGeometry.circular(26),
                    border: Border.all(color: Colors.blueAccent, width: 2),
                    boxShadow: [BoxShadow(blurRadius: 7, offset: Offset(0, 3))],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPengajarMaria(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.person,
                          size: 45,
                          color: Colors.blueGrey,
                        ),
                      ),
                      Text(
                        "Pengajar",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
