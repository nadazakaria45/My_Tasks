import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

void main() {
  runApp(const SignupPage());
}

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Sign up Page',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Name',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Phone',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'E-mail',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Repassword',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20,),
            ElevatedButton(
               child: Text('Sign up'),
               onPressed: () {
                 
               },
               ),
               TextButton(
               child: Text('If you have an account , please login here'),
               onPressed: () {
                 Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context)  => LoginPage()),
                   );    
               },
               )
          ],
        ),
      ),
     
    );
  }
}
