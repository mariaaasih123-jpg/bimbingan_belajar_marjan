import 'package:flutter/material.dart';

class MenuOwnerWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget page;

  const MenuOwnerWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      ),
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon,color: Colors.purple,),
                SizedBox(width: 10),
                Text(title,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
