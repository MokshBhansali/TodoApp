import 'package:flutter/material.dart';

Padding textFormField({String hint, controller}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hint,
      ),
    ),
  );
}

RaisedButton raisedButton({@required onTapped, String label}) {
  return RaisedButton(
    onPressed: onTapped,
    child: Text(label ?? ""),
  );
}
