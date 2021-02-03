import 'package:flutter/material.dart';
import 'screens/homeSreen.dart';
import 'screens/notesDetail.dart';

var routes = <String, WidgetBuilder>{
  "/": (context) => HomeScreen(),
  "/Notes": (context) => NotesDetail(),
};
