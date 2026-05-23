
import 'package:flutter/material.dart';

class BarisInfoMaria extends StatelessWidget {
  final String judul;
  final String isi;
  const BarisInfoMaria({super.key, required this.judul, required this.isi});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          judul,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
        Text(
          isi,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
