import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        backgroundColor:const Color(0xE1A52121),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 82,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 80,
                backgroundImage:AssetImage('images/123.jpg') ,
              ),
            ),
          Text("Elsayed Elhosny",style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          fontFamily:'Pacifico',
          ),),
          Text(
            "FLUTTER DEVELOPMENT",style: TextStyle(
            fontSize: 15,
            color: Colors.grey,
          fontWeight: FontWeight.bold
          ),),
          Divider(
            thickness: 2,
            color: Colors.grey,
            indent: 50,
            endIndent: 50,
          ),
        Card( 
            margin: EdgeInsetsDirectional.symmetric(vertical: 10,horizontal: 20,),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(leading:Icon(Icons.phone,color: Colors.black),
            title: Text('(+20) 1064624715',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    )), ),
          ),

          Card( 
            margin: EdgeInsetsDirectional.symmetric(vertical: 10,horizontal: 20,),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(leading:Icon(Icons.email,color: Colors.black),
            title: Text('sayedelhoseny09@gmail.com ',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    )), ),
          ),
            Card( 
            margin: EdgeInsetsDirectional.symmetric(vertical: 10,horizontal: 20,),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(leading:Icon(Icons.facebook,color: Colors.black),
            title: Text('Elsayed mohamed ',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    )), ),
          ),
          ],
        ),
      ),
    );
  }
}
