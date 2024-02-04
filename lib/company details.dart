import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    final blueIconColor = Color.fromARGB(255, 239, 242, 235); // Define the desired icon color

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
        title: Text("EyeT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("EyeT Innovation is a one-step solution for all yoursoftwear and it servises requiments ",style: TextStyle(color: Colors.white,fontSize: 24,),
          
            ),
          ),
          ListTile(

            
            leading: Container(
              decoration:
                  BoxDecoration(color: blueIconColor, shape: BoxShape.circle),
              child: Icon(Icons.link, color: const Color.fromARGB(255, 10, 10, 10)), // Blue icon color
            ),
            title: Text("Quick Links",style: TextStyle(color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,bottom: 10),
            child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 16),),
          ),
            Padding(
            padding: const EdgeInsets.only(left: 70,bottom: 10),
            child: Text("About Us",style: TextStyle(color: Colors.white,fontSize: 16),),
          ),  Padding(
            padding: const EdgeInsets.only(left: 70,bottom: 10),
            child: Text("Contact us",style: TextStyle(color: Colors.white,fontSize: 16),),
          ),  Padding(
            padding: const EdgeInsets.only(left: 70,bottom: 10),
            child: Text("Privacy Policy",style: TextStyle(color: Colors.white,fontSize: 16),),
          ),
          ListTile(
            leading: Container(
              decoration:
                  BoxDecoration(color: blueIconColor, shape: BoxShape.circle),
              child: Icon(Icons.contact_emergency_outlined,
                  color: const Color.fromARGB(255, 23, 23, 23)), // Blue icon color
            ),
            title: Text("Contact Information",style: TextStyle(color: Colors.white),),
          ),

          ListTile(
            leading: Container(
              decoration:
                  BoxDecoration(color: blueIconColor, shape: BoxShape.circle),
              child:
                  Icon(Icons.location_on, color: const Color.fromARGB(255, 20, 19, 19)), // Blue icon color
            ),
            title: Text("Office Location",style: TextStyle(color: Colors.white),),
          ),
             Padding(
            padding: const EdgeInsets.only(left: 70,bottom: 10),
            child: Text("EyeT Innovation Softwear Solution (p),37/28/9-b Ground floor,Sivasailam Complex,Changampuzha Samadhy Road, Edapally-682024,kerala",style: TextStyle(color: Colors.white,fontSize: 16),),
          ),
          ListTile(
            leading: Container(
              decoration:
                  BoxDecoration(color: blueIconColor, shape: BoxShape.circle),
              child: Icon(Icons.messenger,
                  color: Color.fromARGB(255, 17, 16, 16)), // Blue icon color
            ),
            title: Text("Sent Us a Message",style: TextStyle(color: Colors.white),),
          ),
             Padding(
            padding: const EdgeInsets.only(left: 70,bottom: 10),
            child: Text("info@eyetinnovation.com",style: TextStyle(color: Colors.white,fontSize: 16),),
          ),
          ListTile(
            leading: Container(
              decoration:
                  BoxDecoration(color: blueIconColor, shape: BoxShape.circle),
              child: Icon(Icons.call, color: const Color.fromARGB(255, 16, 16, 16)), // Blue icon color
            ),
            title: Text("give us a call",style: TextStyle(color: Colors.white),),
            
          ),
             Padding(
            padding: const EdgeInsets.only(left: 70,bottom: 10),
            child: Text("+91 8547553629",style: TextStyle(color: Colors.white,fontSize: 16),),
          ),
         
      
          // Add more list items with leading icons as needed
        ],
      ),
    );
  }
}