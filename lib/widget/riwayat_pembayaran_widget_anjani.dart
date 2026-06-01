import 'package:flutter/material.dart';

class RiwayatPembayaranWidgetAnjani extends StatefulWidget {
  final String nama;
  final String paket;
  final String harga;
  final String status;
  final String gmbr;
  const RiwayatPembayaranWidgetAnjani({
    super.key,
    required this.nama,
    required this.paket,
    required this.harga,
    required this.status,
    required this.gmbr,
  });

  @override
  State<RiwayatPembayaranWidgetAnjani> createState() =>
      _RiwayatPembayaranWidgetAnjaniState();
}

class _RiwayatPembayaranWidgetAnjaniState
    extends State<RiwayatPembayaranWidgetAnjani> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.fromLTRB(20, 10, 20, 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipOval(
            child: Image.asset(
              widget.gmbr,
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
          ),

          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.nama,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 5),
              Text(widget.paket, style: TextStyle(fontSize: 10)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.harga,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: widget.status == "Aktif"
                      ? Colors.green.shade100
                      : Colors.red.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  widget.status,
                  style: TextStyle(
                    color: widget.status == "Aktif"
                        ? Colors.green
                        : Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
