import 'package:flutter/material.dart';
class InfoCardMaria extends StatelessWidget {
  final String title;
  final String subtitle;
  const InfoCardMaria({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style:TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
  }
}