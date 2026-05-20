import 'package:flutter/material.dart';

class PengajarWidget extends StatefulWidget {
  final String nama;
  final String notlp;
  final String mapel;
  final String gmbar;

  const PengajarWidget({
    super.key,
    required this.nama,
    required this.notlp,
    required this.mapel,
    required this.gmbar,
  });

  @override
  State<PengajarWidget> createState() => _PengajarWidgetState();
}

class _PengajarWidgetState extends State<PengajarWidget> {
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
              ClipOval(
                child: Image.asset(
                  widget.gmbar,
                  fit: BoxFit.cover,
                  height: 55,
                  width: 55,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.nama,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(height: 4),
                  Text(widget.mapel, style: TextStyle(fontSize: 12)),
                  Text(widget.notlp, style: TextStyle(fontSize: 12)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
