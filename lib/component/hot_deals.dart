import 'package:flutter/material.dart';

class HotDeals extends StatelessWidget {
  const HotDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 250,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[300],
            image: const DecorationImage(
              image: AssetImage('assets/joystick.png'),
            ),
          ),
        ),
        SizedBox(height: 10),
        const Text(
          'Thrustmaster\nJoystick',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        const Text(
          '49£',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
