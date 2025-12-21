import 'package:flutter/material.dart';
import 'package:foodorder/contact.dart';

class Homedetail extends StatefulWidget {
  const Homedetail({super.key});

  @override
  State<Homedetail> createState() => _FooddetailState();
}

class _FooddetailState extends State<Homedetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade900,
        // centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
         icon: Icon(Icons.arrow_back_ios,size: 30,)),
         title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("Family Villa",style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.bold
             ),),
             Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Mogadishu",),
                SizedBox(width: 12,),
                Text("\$50,000",)
              ],
             )
           ],
         ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
         
            ClipRRect(
              
                child: Image.network("https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg",
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
                Text("\$50,000",
                        style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold)),
                        SizedBox(width: 15,),
                        Text("For Sale",
                        style: TextStyle(fontSize: 25,
                      
                        ))
              ],
            ),

          ),
          Divider(
            indent: 13,
          ),
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Text("key Details",
                        style: TextStyle(fontSize: 22,
                        fontWeight: FontWeight.bold)),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              children: [
                Icon(Icons.bed,size: 30,),
                SizedBox(width: 10,),
                 Text("4 Bedrooms",
                        style: TextStyle(fontSize: 22,
                        )),
              ],
             ),
           ),
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              children: [
                Icon(Icons.bathroom,size: 30,),
                SizedBox(width: 10,),
                 Text("3 Bathrooms",
                        style: TextStyle(fontSize: 22,
                        )),
              ],
             ),
            ),
             Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              children: [
                Icon(Icons.square_foot,size: 30,),
                SizedBox(width: 10,),
                 Text("2,500 sq ft",
                        style: TextStyle(fontSize: 22,
                        )),
              ],
             ),
             ),
           Divider(
            indent: 13,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Beautiful Family Villa with a large garden and swimming pool.",
                        style: TextStyle(fontSize: 24,
                        )),
          ),
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(onPressed: (){
               Navigator.push(context,
                       MaterialPageRoute(
                        builder:(context)=>Contact()));
                    
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              fixedSize: Size(340, 50)
            ),
             child:Text("Contact Owner")),
          )
        ],
      ),
     
    );
  }
}