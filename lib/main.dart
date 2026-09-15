// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false, 
//       home: Scaffold(
        
//         // ۱. نوار بالای صفحه همراه با آیکون سرچ
//         appBar: AppBar(
//           backgroundColor: Colors.orange,
//           title: Text('My App'),
//           actions: [
//             Icon(Icons.search), // آیکون جستجو
//             SizedBox(width: 15), // فاصله از راست
//           ],
//         ),
        
//         // ۲. بدنه اصلی صفحه
//         body: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
              
//               // بخش نام همراه با آیکون آدمک (پروفایل)
//               Row(
//                 children: [
//                   Icon(Icons.account_circle, size: 45, color: Colors.orange), // آیکون پروفایل
//                   SizedBox(width: 10), // فاصله آیکون تا متن
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Layla Ahmadi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                       Text('Flutter developer', style: TextStyle(color: Colors.grey)),
//                     ],
//                   ),
//                 ],
//               ),
              
//               SizedBox(height: 30), 
              
//               // دکمه‌های شهرها همراه با آیکون لوکیشن
//               Row(
//                 children: [
                  
//                   // دکمه کابل با آیکون
//                   ElevatedButton.icon(
//                     onPressed: () {}, 
//                     icon: Icon(Icons.location_on, size: 16), // آیکون لوکیشن
//                     label: Text('Kabul'), // متن دکمه
//                   ),
//                   SizedBox(width: 8), 
                  
//                   // دکمه غزنی با آیکون
//                   ElevatedButton.icon(
//                     onPressed: () {}, 
//                     icon: Icon(Icons.location_on, size: 16),
//                     label: Text('Ghazni'),
//                   ),
//                   SizedBox(width: 8),
                  
//                   // دکمه هرات با آیکون
//                   ElevatedButton.icon(
//                     onPressed: () {}, 
//                     icon: Icon(Icons.location_on, size: 16),
//                     label: Text('Herat'),
//                   ),
                  
//                 ],
//               ),

//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // حذف super.key و ساده‌سازی سازنده
  MyApp(); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Shopify'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              // تصویر پروفایل
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                   'https://picsum.photos',
                ),
              ),
              // آیکون پین سرخ رنگ
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.edit, // آیکون پین
                    color: Colors.blue, // رنگ سرخ
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
