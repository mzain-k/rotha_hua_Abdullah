import 'package:flutter/material.dart';

class ExtractedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const ExtractedAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logo.jpeg',
              height: 50,
              width: 50,
            ),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        backgroundColor: Colors.red[900],
      );
  }
}