import 'package:flutter/material.dart';

class MetodePembayaranMaria extends StatelessWidget {
  const MetodePembayaranMaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.mail, color: Colors.white, size: 40),
          ),

          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Transfer Bank",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 8),

              Text("BCA - 1234567890", style: TextStyle(fontSize: 18)),

              SizedBox(height: 4),

              Text("an. Smartless Les", style: TextStyle(fontSize: 18)),
            ],
          ),
        ],
      ),
    );
  }
}
