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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/controller.png'),
                            ),
                          ),
                        ),
                        Text(
                          'xBox one Controller',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Limited edition',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 250,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300],
                        image: DecorationImage(
                          image: AssetImage('assets/joystick.png'),
                        ),
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

    // Container(
    //               height: 500,
    //               child: ListView(
    //                 scrollDirection: Axis.vertical,
    //                 children: [
    //                   Row(
    //                     children: [
    //                       Container(
    //                         width: 180,
    //                         height: 200,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(20),
    //                           image: DecorationImage(
    //                             image: AssetImage('assets/controller.png'),
    //                           ),
    //                         ),
    //                         child: Text('Loyal'),
    //                       ),
    //                       Container(
    //                         height: 180,
    //                         width: 200,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(20),
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   Row(
    //                     children: [
    //                       Container(
    //                         width: 180,
    //                         height: 200,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(20),
    //                           image: DecorationImage(
    //                             image: AssetImage('assets/controller.png'),
    //                           ),
    //                         ),
    //                         child: Text('Loyal'),
    //                       ),
    //                       Container(
    //                         height: 180,
    //                         width: 200,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(20),
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   Row(
    //                     children: [
    //                       Container(
    //                         width: 180,
    //                         height: 200,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(20),
    //                           image: DecorationImage(
    //                             image: AssetImage('assets/controller.png'),
    //                           ),
    //                         ),
    //                         child: Text('Loyal'),
    //                       ),
    //                       Container(
    //                         height: 180,
    //                         width: 200,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(20),
    //                           color: Colors.black,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ),
            