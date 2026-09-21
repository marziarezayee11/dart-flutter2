import 'package:flutter/material.dart';


Widget buildStoryItem(String name) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 34,
          backgroundColor: Colors.green,
          child: CircleAvatar(
            radius: 31,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 29,
              backgroundColor: Colors.grey[400],
              child: Icon(Icons.person, color: Colors.white, size: 30),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(name, style: TextStyle(fontSize: 12)),
      ],
    ),
  );
}
