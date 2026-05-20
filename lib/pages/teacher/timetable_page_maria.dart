import 'package:flutter/material.dart';

class TimetablePageMaria extends StatelessWidget {
  const TimetablePageMaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.black,
                    size: 15,
                  ),
                  Text(
                    "Jadwal Mengajar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.calendar_month, color: Colors.black, size: 20),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 500,
                height: 500,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
