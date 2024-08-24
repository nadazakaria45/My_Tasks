import 'package:flutter/material.dart';
import 'package:flutter_application_1/note.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class AddNotePage extends StatelessWidget {
  final String? note;
  final int? index;
  AddNotePage({this.note,this.index});
  TextEditingController cont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if( note!=null){
      cont.text =note!;
    }
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
              child: Container(
                child: TextField(
                  controller: cont,
                  maxLines: 9,
                  minLines: 8,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Your Note',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 101, 101, 101),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                List<String> myData = prefs.getStringList('note') ?? [];
                if(index!= null) {
                  myData[index!] =cont.text;
                }
                else{
                  myData.add(cont.text);
                }
                await prefs.setStringList('note', myData);
                Navigator.pop(context);
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: ((context) => NoteApp()))
                );
              },
              child: Container(
                height: 50,
                width: 200,
                child: Center(
                    child: Text(
                      index!=null? 'Edit Note' : 'Add Note',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
                decoration: BoxDecoration(
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
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}