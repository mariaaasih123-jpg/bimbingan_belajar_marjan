
import 'package:flutter/cupertino.dart';

class MenuModel {
  final IconData icon;
  final String title;
  final Color color;
  final Widget page;

  MenuModel({
    required this.icon,
    required this.title,
    required this.color,
    required this.page,
  });
}
