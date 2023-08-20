import 'package:flutter/material.dart';

class HotDeals extends StatelessWidget {
  final String productTitle;
  final String productPrice;
  final String secondProductTitle;
  final String secondProductPrice;
  final ImageProvider<Object> image;
  final ImageProvider<Object> secondImage;
  const HotDeals({
    super.key,
    required this.productTitle,
    required this.productPrice,
    required this.secondProductTitle,
    required this.secondProductPrice,
    required this.image,
    required this.secondImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: image,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              productTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              productPrice,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
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
            const SizedBox(height: 10),
            Text(
              secondProductTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              secondProductPrice,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
