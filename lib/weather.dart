import 'package:flutter/material.dart';

void main() {
  runApp(const Weather());
}

class Weather extends StatelessWidget {
  const Weather({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Padding(padding:const EdgeInsets.all(16.0),
                child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               SizedBox(height: 150,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New Yourk',
                    style: TextStyle(color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                    Icon(Icons.location_on_sharp,
                    color: Colors.white,
                    ),
                    SizedBox(width: 150),
                    Icon(Icons.settings,
                    color: Colors.white,
                    size: 28.0,),
                   
                  ],
                   ),
                   SizedBox(height: 10),
              
                      Row(
                      children: [
                        Text('20°',
                        style: TextStyle(fontSize: 80,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width:50),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('CLOUDY    20/12',
                              style: TextStyle(fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,),
                              ),
                            ],
                          ),
                          ],
                     
                        ),
                            SizedBox(height: 5),
                            Center(
                              child: Image.asset('images/111.jpg'),
                            ),
               
                      SizedBox(height: 30),
                    
                      card('To day', '20/12'),
                      card('  Monday', '20/12'),
                      card('  Thursday', '20/12'),

                    ],
                   ),
        ),
    );
 
  }
  Widget card(String day,String temprature){
    return  Container(
        color: Colors.white54,
        height: 50,
        width: 380,
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 17),
           
       
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.cloud,
              color: Colors.white),
              Text(day,
              style: TextStyle(color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.normal),
              ),
              SizedBox(width: 185),
              Text(temprature,
              style: TextStyle(color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.normal ),
              )
            ],
             
                   ),
         
        
     );
     
    
      

  }
}