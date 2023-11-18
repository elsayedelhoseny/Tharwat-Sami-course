import 'package:flutter/material.dart';

void main() {
  runApp(BasketballPoint());
}

class  BasketballPoint extends StatefulWidget {

  @override
  State<BasketballPoint> createState() => _BasketballPointState();
}

class _BasketballPointState extends State<BasketballPoint> {
 int teamAPoints =0;

  int teamBPoints =0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.orange,
          title: Text('Points Counter'),),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container( height: 350,
                  child: Column(     
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                     Text('Team A',style: TextStyle(fontSize:20 ),),
                     Text('$teamAPoints',style: TextStyle(fontSize:100 ,fontWeight: FontWeight.w400),),
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange
                      ),
                      onPressed: (){
                        setState(() {
                          teamAPoints++;
                        });
                      }, child: Text('Add 1 Point'),),
                    
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange
                      ),
                      onPressed: (){
                        
                        setState(() {
                          teamAPoints+=2;
                        });
                      }, child: Text('Add 2 Point'),),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange
                      ),
                      onPressed: (){
                        setState(() {
                          teamAPoints+=3;
                        });
                      }, child: Text('Add 3 Point'),),
                  ],),
                ),
                           SizedBox(width: 25,),

              Container(height: 450,
                child: VerticalDivider(color: Colors.grey,
                endIndent: 50,
                indent: 50,
                thickness: 2,
                ),
              ),
               SizedBox(width: 25,),
               Container( height: 350,
                 child: Column(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Text('Team B',style: TextStyle(fontSize:20 ),),
                     Text('$teamBPoints',style: TextStyle(fontSize:100 ,fontWeight: FontWeight.w400),),
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange
                      ),
                      onPressed: (){
                        setState(() {
                          teamBPoints++;
                        });
                      }, child: Text('Add 1 Point'),),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange
                      ),
                      onPressed: (){
                        setState(() {
                          teamBPoints+=2;
                        });
                      }, child: Text('Add 2 Point'),),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange
                      ),
                      onPressed: (){
                        setState(() {
                          teamBPoints+=3;
                        });
                      }, child: Text('Add 3 Point'),),
                  ],),
               ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70,),
              child: Container( width:double.infinity,
                child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange
                        ),
                        onPressed: (){setState(() {
                          teamAPoints=0;
                           teamBPoints=0;
                        });
                        }, child: Text('Reset'),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


