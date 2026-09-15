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
  MyApp(); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(218, 9, 146, 209),
          title: Text('Shopify',style: TextStyle(color:Colors.white),),
          centerTitle: true,
        
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [git add .
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                   'data:image/jpeg;base64,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',
                ),
              ),
              
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.edit,
                    color: Colors.blue,
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
