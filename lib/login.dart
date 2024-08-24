import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/signup.dart';

void main() {
  runApp(const LoginPage());
}
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emaillController=TextEditingController();
  final _passworddController=TextEditingController();
  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emaillController.text.trim(),
       password: _passworddController.text.trim(),);
       
  }
  @override
  void dispose() {
    super.dispose();
    _emaillController.dispose();
    _passworddController.dispose();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Login Page',
                    style: TextStyle(
                      fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
           ),
           ),
           ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
          children:
           <Widget>[
             SizedBox(height: 140,
               child: Center(
                     child :
                         Image.asset('images/333.jpg'),
                  ),
             ),
              
              SizedBox(height: 40,),
             TextField(
              controller: _emaillController,
                   decoration: InputDecoration(
                   labelText: 'Username',
                   hintText: 'Enter your username',
                    ),
                   ),
            TextField(
              controller: _passworddController,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
              obscureText: true,            
            ),
            SizedBox(height: 20,),          
            GestureDetector(
              onTap: signIn,
               child: ElevatedButton(
                 child: Text('Login',
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                 ),),
                 onPressed: () {
                   
                 },
               ),
               ),
             TextButton(
               child: Text('If you don\'t have account , please sign up here'),
               onPressed: () {
                Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context)  => SignupPage()),
                   );        
               },
               ),

      
           ],
      ),
      ),
    );
  }
}