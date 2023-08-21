import 'package:flutter/material.dart';
import 'package:gaming_store_app/pages/product_detail_page.dart';

import '../component/hot_deals.dart';
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
                const SizedBox(height: 10),
                HotDeals(
                  // the first frame in the row widget
                  productTitle: 'PlayStation Four Controller',
                  productPrice: 'Limited edition',
                  image: AssetImage('assets/play4controller.png'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(),
                      ),
                    );
                  },
                  // the second frame in the row widget
                  secondProductTitle: 'Thrustmaster\nJoystick',
                  secondProductPrice: '49£',
                  secondImage: AssetImage('assets/joystick.png'),
                ),
                const SizedBox(height: 10),
                const HotDeals(
                  // the first frame in the row widget
                  productTitle: 'Play4 Controller',
                  productPrice: 'Few pieces',
                  image: AssetImage('assets/play4controller.png'),
                  // the second frame in the row widget
                  secondProductTitle: 'Thrustmaster\nJoystick',
                  secondProductPrice: '100£',
                  secondImage: AssetImage('assets/joystick.png'),
                ),
                const SizedBox(height: 10),
                const HotDeals(
                  // the first frame in the row widget
                  productTitle: 'Xbox One Controller',
                  productPrice: 'Limited edition',
                  image: AssetImage('assets/xboxcontroller.png'),
                  // the second frame in the row widget
                  secondProductTitle: 'Thrustmaster\nJoystick',
                  secondProductPrice: '49£',
                  secondImage: AssetImage('assets/xboxcontroller.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
