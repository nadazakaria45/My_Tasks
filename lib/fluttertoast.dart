import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



void main() {
  runApp(const ToastEx());
}

class ToastEx extends StatelessWidget {
  const ToastEx({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast',
        style: 
        TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
        ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
    
      body: Center(
        child: ElevatedButton(
            onPressed: (){
            Fluttertoast.showToast
            (msg: "تم الارسال بنجاح",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 21,
            );
          },
         child: Text('Click',
         style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
         ),),
         ),
      ),
    );
  }
}