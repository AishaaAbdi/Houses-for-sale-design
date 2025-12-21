import 'package:flutter/material.dart';
import 'package:foodorder/allHouse.dart';


class homeHouse extends StatefulWidget {
  const homeHouse({super.key});

  @override
  State<homeHouse> createState() => _HomefoodState();
}

class _HomefoodState extends State<homeHouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade900,
        leading: IconButton(onPressed: (){
         
        },
         icon: Icon(Icons.arrow_back_ios,size: 30,)),
         title: Text("Properties For Sale",style: TextStyle(
          fontSize: 25,fontWeight: FontWeight.bold,
         ),),
      ),
        body: ListView(
          children: [
          Column(
            children: [
              Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor:Colors.white ,
                          prefixIcon: Icon(Icons.search,size: 30,),
                          hintText: "Search Properties...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)
                          )
                        ),
                      ),
                    ),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  allHouse(
                    img: "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg", 
                    text: "Family Villa", 
                    subtext:"Mogadishu",
                     price: 50000),
                   SizedBox(width: 12,),
               allHouse(
                    img: "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg", 
                    text: "Family Villa", 
                    subtext:"Mogadishu",
                     price: 50000),
                     SizedBox(width: 12,),
                  allHouse(
                    img: "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg", 
                    text: "Family Villa", 
                    subtext:"Mogadishu",
                     price: 50000),
                     SizedBox(width: 12,),
                   allHouse(
                    img: "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg", 
                    text: "Family Villa", 
                    subtext:"Mogadishu",
                     price: 50000),
                  ],
                 ),
               ),
               SizedBox(height: 15,),
                SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   allHouse(
                    img: "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg", 
                    text: "Family Villa", 
                    subtext:"Mogadishu",
                     price: 50000),
                   SizedBox(width: 12,),
                  allHouse(
                    img: "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg", 
                    text: "Family Villa", 
                    subtext:"Mogadishu",
                     price: 50000),
                     SizedBox(width: 12,),
                  allHouse(
                    img: "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg", 
                    text: "Family Villa", 
                    subtext:"Mogadishu",
                     price: 50000),
                     SizedBox(width: 12,),
                allHouse(
                    img: "https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg", 
                    text: "Family Villa", 
                    subtext:"Mogadishu",
                     price: 50000),
                  ],
                 ),
               )
            ],
          ),
          ]
        ),
      
      );
    
  }
}