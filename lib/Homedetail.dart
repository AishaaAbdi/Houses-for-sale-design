import 'package:flutter/material.dart';
import 'package:foodorder/contact.dart';

class Homedetail extends StatelessWidget {
  final String homename;
  final String city;
  final String img;

  final double price;
  final String Bedrooms;
  final String bathroom;
  final String square;
  final String description;
  const Homedetail({
    required this.homename,
    required this.city,
    required this.price,
    required this.img,
    required this.Bedrooms,
    required this.bathroom,
    required this.square,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade900,
        // centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 30),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$homename",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("$city"), SizedBox(width: 12), Text("\$$price")],
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.network(
              "$img",
              fit: BoxFit.cover,
              height: 218,
              width: double.infinity,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$$price",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 15),
                Text("For Sale", style: TextStyle(fontSize: 25)),
              ],
            ),
          ),
          Divider(indent: 13),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "key Details",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.bed, size: 30),
                SizedBox(width: 10),
                Text("$Bedrooms", style: TextStyle(fontSize: 22)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.bathroom, size: 30),
                SizedBox(width: 10),
                Text("$bathroom", style: TextStyle(fontSize: 22)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.square_foot, size: 30),
                SizedBox(width: 10),
                Text("$square", style: TextStyle(fontSize: 22)),
              ],
            ),
          ),
          Divider(indent: 13),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("$description", style: TextStyle(fontSize: 24)),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => Contact(
                          homename: homename,
                          city: city,
                          price: price,
                          img: img,
                        ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade900,
                foregroundColor: Colors.white,
                fixedSize: Size(340, 50),
              ),
              child: Text("Contact Owner"),
            ),
          ),
        ],
      ),
    );
  }
}
