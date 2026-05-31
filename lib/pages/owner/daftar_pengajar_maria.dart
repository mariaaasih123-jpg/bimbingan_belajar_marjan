
import 'package:flutter/material.dart';

class DaftarPengajarMaria extends StatelessWidget {
  const DaftarPengajarMaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.purple,
        elevation: 0,

        leading: Icon(Icons.arrow_back, color: Colors.black, size: 40),

        title: Text(
          "Daftar pengajar",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,
      ),
      body: Center(
        child: Container(
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
      ),
    );
  }
}
