import 'package:flutter/material.dart';
import 'StoryItem.dart'; 
import 'PostItem.dart'; 

class InstagramFeedPage extends StatelessWidget {
  
  final List stories = [
    'Your Story',
    'user_1',
    'user_2',
    'user_3',
    'user_4',
    'user_5',
    'user_6',
    'user_7',
  ];


  // final List posts = [
  //    {
  //     'username': 'coding_life',
  //     'likes': '۳,۱۰۰ لایک',
  //     'caption': 'برنامه‌نویسی ترکیبی از هنر و منطق است'
  //   },   {
  //     'username': 'coding_life',
  //     'likes': '۳,۱۰۰ لایک',
  //     'caption': 'برنامه‌نویسی ترکیبی از هنر و منطق است'
  //   },
  //   {
  //     'username': 'coding_life',
  //     'likes': '۳,۱۰۰ لایک',
  //     'caption': 'برنامه‌نویسی ترکیبی از هنر و منطق است'
  //   },
  //      {
  //     'username': 'coding_life',
  //     'likes': '۳,۱۰۰ لایک',
  //     'caption': 'برنامه‌نویسی ترکیبی از هنر و منطق است'
  //   },
  //      {
  //     'username': 'coding_life',
  //     'likes': '۳,۱۰۰ لایک',
  //     'caption': 'برنامه‌نویسی ترکیبی از هنر و منطق است'
  //   },   {
  //     'username': 'coding_life',
  //     'likes': '۳,۱۰۰ لایک',
  //     'caption': 'برنامه‌نویسی ترکیبی از هنر و منطق است'
  //   },   {
  //     'username': 'coding_life',
  //     'likes': '۳,۱۰۰ لایک',
  //     'caption': 'برنامه‌نویسی ترکیبی از هنر و منطق است'
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
    
      body: Column(
        children: [
          
        
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              itemCount: stories.length,
              itemBuilder: (context, index) {
            
                return buildStoryItem(stories[index]);
              },
            ),
          ),
          
          Divider(color: Colors.grey[300], height: 1),

          
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: posts.length,
          //     itemBuilder: (context, index) {
            
                // return buildPostItem(
                //   posts[index]['username']!,
                //   posts[index]['likes']!,
                //   posts[index]['caption']!,
                // );
              // },
          //   ),
          // ),
        ],
      ),
    );
  }
}
