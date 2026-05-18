import 'package:flutter/material.dart';

class JadwalWidget extends StatefulWidget {
  final int id;
  final String jam;
  final String pelajaran;
  final String guru;
  final IconData icon;
  final String status;
  const JadwalWidget({
    super.key,
    required this.id,
    required this.jam,
    required this.pelajaran,
    required this.guru,
    required this.icon,
    required this.status,
  });

  @override
  State<JadwalWidget> createState() => _JadwalWidgetState();
}

class _JadwalWidgetState extends State<JadwalWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.purple.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // JAM
              Text(
                widget.jam,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),SizedBox(width: 10),
              Icon(widget.icon, size: 40, color: Colors.purple),
              SizedBox(width: 10),
              SizedBox(
                width: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.pelajaran,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      widget.guru,
                      style: TextStyle(fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: widget.status == "online"
                  ? Colors.purple
                  : Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              widget.status,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}