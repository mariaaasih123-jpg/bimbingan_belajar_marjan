import 'package:flutter/material.dart';

class DaftarSiswaWidgetMaria extends StatelessWidget {
  final String name;
  final String kelas;
  final String paket;
  final String image;
  final String status;
  const DaftarSiswaWidgetMaria({
    super.key,
    required this.name,
    required this.kelas,
    required this.paket,
    required this.image,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleAvatar(radius: 35, backgroundImage: AssetImage(image)),
          SizedBox(width: 15),
          SizedBox(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),

                Text(kelas, style: TextStyle(color: Colors.grey)),

                Text(paket, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              status,
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
