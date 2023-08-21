import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'PlayStation Four Controller',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Text(
              'Limited edition',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        const Row(
          children: [
            Text(
              '🌟 4.6 (1390 reviews)',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          children: [
            Text(
              'Discover all the intensity, precision and\ncomfort of the Xbox One Wireless Controller.\nPulse triggers let you experience vibration\nfeedback so you hear every shot and\njolt in high definition',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
