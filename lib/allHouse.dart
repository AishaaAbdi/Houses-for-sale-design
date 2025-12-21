import 'package:flutter/material.dart';
import 'package:foodorder/Homedetail.dart';


class allHouse extends StatefulWidget {
  final String img;
  final  String text;
  final   String subtext;
   final   double price;
  const allHouse({
    required this.img,
     required this.text,
      required this.subtext,
       required this.price,
  });

  @override
  State<allHouse> createState() => _AllfoodState();
}

class _AllfoodState extends State<allHouse> {
 

  
  @override
  Widget build(BuildContext context) {
    return
      
            Container(
              height: 310,
              width: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)
                      ),
                      child: Image.network(widget.img,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(widget.text,
                      style: TextStyle(fontSize: 22,
                      fontWeight: FontWeight.bold),),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(widget.subtext,
                      style: TextStyle(fontSize: 22,
                    ),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                          Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("\$${widget.price}",
                      style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900),),
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context,
                       MaterialPageRoute(
                        builder:(context)=>Homedetail()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white
                    ),
                     child: Text("View Details",
                      ),
                      )
                      ],
                    )
                    
                ],
              ),
            );

    
  }
}