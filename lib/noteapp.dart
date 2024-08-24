import 'package:flutter/material.dart';

void main() {
  runApp(const NoteListScreen());
}

class NoteListScreen extends StatelessWidget {
  const NoteListScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: 
          Text('Note',
            style: TextStyle(
              color: Colors.black,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
      body:
      NoteList(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
             MaterialPageRoute(builder: (context) => AddNoteScreen()),
             );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
class NoteList extends StatelessWidget {
            @override
  Widget build(BuildContext context){
    return
        Padding(
          padding:  const EdgeInsets.all(20.0),
          child: Container(
            height: 700,
            width: 400,
            color: Colors.black,     
            child: ListView.builder(
                                 itemCount: 10,
                               itemBuilder: (context,index){
                                return ListTile(
                                 title: Text('Note $index',
                                 style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                 subtitle: Text('Discription',
                                 style: TextStyle(
                                  color: Colors.white,
                                 ),),
                                    );
                                     },
                                     ),
          ),
    );
  }
}
class AddNoteScreen extends StatelessWidget {
          @override
   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 90,),
            Center(
              child: Container(
                height: 300,
                width: 300,
                color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText:'Add your note',
                    ),
                  ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('Add note',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              ),
              onPressed:() {
              Navigator.pop( context);
              },
            ),   
          ],
        ),
      ),
    );
   }
  
}