import 'package:flutter/material.dart';


Widget buildStoryItem(String name) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 34,
          backgroundColor: Colors.pink,
          child: CircleAvatar(
            radius: 31,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 28,
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
