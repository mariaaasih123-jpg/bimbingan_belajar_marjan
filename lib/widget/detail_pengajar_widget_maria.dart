import 'package:flutter/material.dart';
class DetailPengajarWidgetMaria extends StatelessWidget {
  final IconData icon;
  final String text;

  const DetailPengajarWidgetMaria({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 15),
          Text(text),
        ],
      ),
    );
  }
}