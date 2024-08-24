import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(const count());
}

class count extends StatelessWidget {
  const count({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Text('Gridview.count',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount:3,
        children: List.generate(15, (index) {
            return Center(
             child:  Container(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Item  $index',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                ),            
                ),
              ),            
              decoration: BoxDecoration(
                color: getRandomColor(),
                shape: BoxShape.circle,
              ),
            ),
            );
        }
       ),
    ),
    
    );
    }
    Color getRandomColor(){
        final random=Random();
        return Color.fromARGB(
          255, 
        random.nextInt(256), 
        random.nextInt(256),
        random.nextInt(256),
        );
      }
    
}