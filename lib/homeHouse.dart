import 'package:flutter/material.dart';
import 'package:foodorder/Homedetail.dart';
import 'package:foodorder/allHouse.dart';
import 'package:foodorder/contact.dart';

class HomeHouse extends StatefulWidget {
  const HomeHouse({super.key});

  @override
  State<HomeHouse> createState() => _HomeHouseState();
}

class _HomeHouseState extends State<HomeHouse> {
  // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade900,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 30),
        ),
        title: Text(
          "RestHome",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue.shade900,
            ),
            child: Text("login", style: TextStyle(fontSize: 18)),
          ),
        ],
      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search, size: 30),
                hintText: "Search Properties...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Allhouse(
                  img:
                      "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg",
                  text: "Family Villa",
                  price: 50000,
                  subtext: "Mogadishu",
                  bedrooms: "4 Bedrooms",
                  bathrooms: "3 Bathrooms",
                  square: "1500 sq ft",
                  description: "Beautiful Family Villa with a large garden and swimming pool",
                ),
                SizedBox(width: 10),
                Allhouse(
                  img:
                      "https://images.pexels.com/photos/13203194/pexels-photo-13203194.jpeg",
                  text: "Urban Villa",
                  price: 55000,
                  subtext: "Hargeysa",
                  bedrooms: "4 Bedrooms",
                  bathrooms: "3 Bathrooms",
                  square: "1400 sq ft",
                  description: "A sleek, modern home featuring open-plan living and high-end finishes. Perfect for city life.",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Allhouse(
                  img:
                      "https://images.pexels.com/photos/7061662/pexels-photo-7061662.jpeg",
                  text: "Garden Villa",
                  price: 52000,
                  subtext: "Mogadishu",
                  bedrooms: "5 Bedrooms",
                  bathrooms: "4 Bathrooms",
                  square: "2500 sq ft",
                  description: "Highlighted by a lush private garden and eco-friendly features. A peaceful, green escape.",
                ),
                SizedBox(width: 10),
                Allhouse(
                  img:
                      "https://images.pexels.com/photos/31817157/pexels-photo-31817157.jpeg",
                  text: "Sunset Villa",
                  price: 60000,
                  subtext: "Bosaso",
                  bedrooms: "6 Bedrooms",
                  bathrooms: "3 Bathrooms",
                  square: "1300 sq ft",
                  description: "A multi-level home with a rooftop terrace offering stunning views. Built for entertaining.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
