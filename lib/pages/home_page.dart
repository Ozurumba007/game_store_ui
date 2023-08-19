import 'package:flutter/material.dart';

import '../component/list_of_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const sizedBox10 = SizedBox(height: 10);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              sizedBox10,
              // search icon + filter icon
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.search, size: 35),
                  SizedBox(width: 15),
                  Icon(Icons.filter_list, size: 35),
                ],
              ),
              // Heading text (what is the right deal for you)
              sizedBox10,
              const Row(
                children: [
                  Text(
                    "What's the right\ndeal for you ?",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              // scrollable list of product
              const SizedBox(height: 30),
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ListofProduct(
                      text: '📱  Phones',
                    ),
                    SizedBox(width: 8),
                    ListofProduct(
                      text: '🎮  Videogames',
                    ),
                    SizedBox(width: 8),
                    ListofProduct(
                      text: '📷  Camera',
                    ),
                    SizedBox(width: 8),
                    ListofProduct(
                      text: '💻  Laptop',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
