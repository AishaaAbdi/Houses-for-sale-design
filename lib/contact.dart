import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final String homename;
  final String city;
  final double price;
  final String img;
  const Contact({super.key,
  required this.homename,
    required this.city,
    required this.price,
    required this.img,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
         icon: Icon(Icons.arrow_back_ios,size: 30,)),
         title: Text("Contact Owner",style: TextStyle(
          fontSize: 25,fontWeight: FontWeight.bold
         ),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: Image.network("$img",
              ),
                title: Text("$homename!",style: TextStyle(fontSize: 22,
                fontWeight: FontWeight.bold),),
                subtitle: Row(
                  children: [
                    Text("$city!",style: TextStyle(fontSize: 22,
                      )
                ),
                SizedBox(width: 11,),
                Text("$price",style: TextStyle(fontSize: 22,
               ),),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text("Your Name",style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold),),
          ),
              Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor:Colors.white ,
                        
                       
                        ),
                      ),
                    ),
                     Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text("Your Email",style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold),),
          ),
              Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor:Colors.white ,
                        
                       
                        ),
                      ),
                    ),
                     Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text("Your Phone",style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold),),
          ),
              Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor:Colors.white ,
                         
                         
                       
                        ),
                      ),
                    ),
                     Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text("Message",style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold),),
          ),
              Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor:Colors.white ,
                         
                        
                       
                        ),
                      ),
                    ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(onPressed: (){
                                            
                                            },
                                            style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade900,
                        foregroundColor: Colors.white,
                        fixedSize: Size(350, 50)
                                            ),
                                             child: Text("Send Message",
                        ),
                        ),
                      )
        ],
      ),
    );
  }
}
