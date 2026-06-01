import 'package:flutter/material.dart';

class RingkasanDataWidget extends StatefulWidget {
  final String title;
  final IconData icon;
  final String jumlah;

  const RingkasanDataWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.jumlah,
  });

  @override
  State<RingkasanDataWidget> createState() => _RingkasanDataWidgetState();
}

class _RingkasanDataWidgetState extends State<RingkasanDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.purple, Colors.deepPurple]),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(width: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(widget.icon,color: Colors.black,)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
