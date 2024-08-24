import 'package:flutter/material.dart';
void main() {
  runApp(const test3());
}

class test3 extends StatelessWidget {
  const test3({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(/// يخليه شايف كل الصفحه مش العمود بس عشان يرضى ينقله لنص الصفحه بالعرض
        height: double.infinity, ///ياخد ارتفاع الشاشه كلها
        width: double.infinity,
        child: SingleChildScrollView(///تظبط الابعاد وميظهرش العلامه لصفرا ويعمل اسكرول معايا عادي وبروح عالعمود واختار wrap with widget
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,///وضع المحتوى بالرأس
            crossAxisAlignment: CrossAxisAlignment.center,///وضع المحتوى بالعرض
              children: [
                Container(height: 200,width: 200,color: Colors.black,),
                 Container(height: 200,width: 200,color: Colors.white,),
                  Container(height: 200,width: 200,color: Colors.red,),
                  Container(height: 200,width: 200,color: Colors.purple,),
                  Container(height: 200,width: 200,color: Colors.pink,),
                  Container(height: 200,width: 200,color: Colors.green,),
            
              ],
            ),
        ),
      ),
      );
  }
}
