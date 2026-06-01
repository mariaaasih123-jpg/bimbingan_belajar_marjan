import 'package:flutter/material.dart';

class MenuPegawaiWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final Widget page;
  const MenuPegawaiWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      ),
      child: Card(
        elevation: 3,
        child: Column(
          children: [
            Icon(icon, size: 55, color: color),
            Text(title),
          ],
        ),
      ),
    );
  }
}
