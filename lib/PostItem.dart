import 'package:flutter/material.dart';


Widget buildPostItem(String username, String likes, String caption) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
  
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[400],
              child: Icon(Icons.person, color: Colors.white),
            ),
            SizedBox(width: 10),
            Text(
              username,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.more_vert),
          ],
        ),
      ),

    
      Container(
        height: 300,
        width: double.infinity,
        color: Colors.grey[200],
        child: Icon(
          Icons.image,
          size: 80,
          color: Colors.grey[400],
        ),
      ),

      
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(Icons.favorite_border, size: 28),
            SizedBox(width: 15),
            Icon(Icons.chat_bubble_outline, size: 28),
            SizedBox(width: 15),
            Icon(Icons.send_outlined, size: 28),
            Spacer(),
            Icon(Icons.bookmark_border, size: 28),
          ],
        ),
      ),

      
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          likes,
          style: TextStyle(fontWeight: FontWeight.bold),
          textDirection: TextDirection.rtl,
        ),
      ),

      SizedBox(height: 5),

      
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Expanded(
              child: Text(
                caption,
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(width: 5),
            Text(
              username,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      
    
      Padding(
        padding: EdgeInsets.only(top: 15.0),
        child: Divider(color: Colors.grey[200], thickness: 5),
      ),
    ],
  );
}
