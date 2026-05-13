import 'package:flutter/material.dart';

class JadwalModel {
  final int id;
  final String jam;
  final String pelajaran;
  final String guru;
  final IconData icon;
  final String status;

  JadwalModel({
    required this.id,
    required this.jam,
    required this.pelajaran,
    required this.guru,
    required this.status,
    required this.icon,
  });
}
