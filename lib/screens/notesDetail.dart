import 'package:flutter/material.dart';
import '../global/app.dart';
import '../models/notes.dart';

class NotesDetail extends StatefulWidget {
  @override
  _NotesDetailState createState() => _NotesDetailState();
}

class _NotesDetailState extends State<NotesDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.NotesDetailTxt),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          var myData = todos[index];
          return ListTile(
            title: Text(myData.title),
            subtitle: Text(myData.detail),
          );
        },
      ),
    );
  }
}
