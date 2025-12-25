import 'package:flutter/material.dart';
import 'package:foodorder/Homedetail.dart';

class Allhouse extends StatelessWidget {
   final  String img;
   final  String text;
    final   double price;
  final   String subtext;
  final String bedrooms;
  final String bathrooms;
  final String square;
  final String description;
  
  const Allhouse({
     required this.img,
     required this.text,
      required this.price,
      required this.subtext,
      required this.bedrooms,
    required this.bathrooms,
    required this.square,
    required this.description,
      
  });

  @override
  Widget build(BuildContext context) {


  return Container(
    // height: 150,
        width: 180,
            decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(20),),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              '$img',
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        )
,
        
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          text,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                    
                       Text(
                          "\$$price",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      subtext,
                      style: TextStyle(fontSize: 18,
                      color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 16),
                  SizedBox(
                    height: 45,
                    child: ElevatedButton(onPressed: (){
                                       Navigator.push(context,
                       MaterialPageRoute(
                        builder:(context)=>Homedetail(
                         homename: text,
                      city: subtext,
                      price: price,
                      img: img,
                      Bedrooms: bedrooms,
                      bathroom: bathrooms,
                      square: square,
                      description: description,
                           )
                           ));      
                                            },
                                            style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue.shade900,
                        fixedSize: Size(350, 50)
                                            ),
                                             child: Text("View Detail",
                                              style: TextStyle(fontSize: 18,
                     ),
                    ),
                        ),
                        ),
                  
      ],
    ),
  
  );
}

  }
