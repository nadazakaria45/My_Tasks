// ignore_for_file: unused_import

import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/addnote.dart';
import 'package:shared_preferences/shared_preferences.dart';
import'package:cloud_firestore/cloud_firestore.dart';

class NoteApp extends StatefulWidget {
  @override
  State<NoteApp> createState() => _NoteAppState();
}

class _NoteAppState extends State<NoteApp> {
  List<String> myData = [];
  getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    myData = prefs.getStringList('note') ?? [];
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }
  deleteData(int index) async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    myData.removeAt(index);
    await prefs.setStringList('note', myData);
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: Text(
                  'Note',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                height: 500,
                child: ListView.builder(
                    shrinkWrap: true,
                    
                    itemCount: myData.length,
                    itemBuilder: (context, i) {
                      return Notepad(myData[i],i);
                    }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => (AddNotePage())));
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.red,
        ),
      ),
    );
  }

  Widget Notepad(String discription, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
               child:Text(discription,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              ),
              IconButton(onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>AddNotePage(note :discription ,index:index)) );
              },
               icon: Icon(Icons.edit,
               color : Colors.white),
              ),
              IconButton(onPressed: (){
                deleteData(index);
              }, icon: Icon(Icons.delete,
              color: Colors.white,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}