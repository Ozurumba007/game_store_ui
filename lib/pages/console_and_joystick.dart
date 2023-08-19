import 'package:flutter/material.dart';

import '../component/list_of_product.dart';

class ConsoleAndJoystick extends StatefulWidget {
  const ConsoleAndJoystick({super.key});

  @override
  State<ConsoleAndJoystick> createState() => _ConsoleAndJoystickState();
}

class _ConsoleAndJoystickState extends State<ConsoleAndJoystick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // search icon + filter icon

                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.search, size: 35),
                    SizedBox(width: 15),
                    Icon(Icons.filter_list, size: 35),
                  ],
                ),
                const SizedBox(height: 10),
                // heading text (console and joystick)
                const Row(
                  children: [
                    Text(
                      "Console\nand Joystick",
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
                        text: '🔥  Deals',
                      ),
                      SizedBox(width: 8),
                      ListofProduct(
                        text: '🎮  Videogames',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                const Row(
                  children: [
                    Text(
                      '239 results',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
