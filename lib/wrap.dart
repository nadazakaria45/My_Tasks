import 'package:flutter/material.dart';

void main() {
  runApp(const test2());
}

class test2 extends StatelessWidget {
  const test2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Text('wrap',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
      ),
      body: 
         Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: List.generate(20, 
          (index) {
                return Chip(
                  label: Text('Item $index'),
                  );
          }
            ),
    ),
    );
          }           

    }
    
