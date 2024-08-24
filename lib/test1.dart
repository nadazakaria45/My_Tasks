import 'package:flutter/material.dart';

void main() {
  runApp(const test());
}

class test extends StatelessWidget {
  const test({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 38, 67),
        title: Text(
          'My Profile',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.logout_outlined,
          color: Colors.white,
          size: 30,
        ),
        actions: [
          Icon(
            Icons.person_2_outlined,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'images/333.jpg'),
                      fit: BoxFit.fill),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(
                    200,
                  ),                 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      spreadRadius: 1,
                      offset: Offset(
                        -2,
                        2,
                      ),
                    ),
                  ],
                ),
                height: 150,
                width: 150,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    card('Name : Nada Zakaria',Colors.white,Colors.black),
                    card('Phone Number : 01126084760',Colors.blue,Colors.brown),
                    card('Email : nadazeko98@gmail.com',Colors.red,Colors.green),
                   
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
  Widget card(String name,Color AA,Color BB){
    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 50,
                        width: 350,
                        child: Center(
                          child: Text(
                            name,
                            style: TextStyle(
                              color: AA,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: BB,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              spreadRadius: 1,
                              offset: Offset(
                                -2,
                                2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
  }
}