import 'package:flutter/material.dart';

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
              sizedBox10,
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      color: Colors.grey,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('🔥 Deal')),
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('📱 Videogames'),
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('📱 Phones'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
