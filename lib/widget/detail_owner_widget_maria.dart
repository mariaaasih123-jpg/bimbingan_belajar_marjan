
import 'package:flutter/material.dart';

class DetailOwnerWidgetMaria extends StatelessWidget {
  final String title;
  final String subtitle;
  const DetailOwnerWidgetMaria({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:  TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            subtitle,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}