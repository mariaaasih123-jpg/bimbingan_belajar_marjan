
import 'package:flutter/material.dart';

class PengaturanWidgetMaria extends StatelessWidget {
  final IconData icon;
  final String title;
  const PengaturanWidgetMaria({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          SizedBox(width: 15),
          Text(
            title,
            style:TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}