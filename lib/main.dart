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
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                   'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAFwAXAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAEBgIDBwUBAP/EADkQAAIBAwIEAwQIBQUBAAAAAAECAwAEEQUhBhIxQRNRYRQicZEHIzKBocHR8DNCUnKxFiRDVOEV/8QAGAEBAQEBAQAAAAAAAAAAAAAAAwIEAQD/xAAdEQACAwEBAQEBAAAAAAAAAAAAAQIDESESMTIT/9oADAMBAAIRAxEAPwDmiKozFLaCSeU4jjUsx9BRwipe43uRbaYkAOGnbG3cD9iuHhJv7qS9u5LiXPM5zj+kdhVMSlnAHc1DrRVgFLkscYFdOk5gVjAXO+wFMHCfBsmtZmumaOAdABu1c8wM80cseCACQp71sfBwjbToHRRh1DbUNk2uIWEV9Yuz8AWcduYY/FKEDPMc0ha/w3c6NccwJ8POFat/uFBTpSVx1Ye06PKeTmMY5vuG9EpyjIXFJGV6VP7DqtvLkKkh8OUdt+n44NPpSsumQoxUnsCPvrTdHm9s0q1nO7NGOb4962IyM9KVApRjJVZSrIZ1hH51mPGd6bzV3wfqoByL+dajdutvaTTN0RCfwrH73fUikzZHMPEPptmhQqQNd2lxZS+FeQSQycoblcYOD0NWmDwLUSM/vSA4UV2eJtLlivEb62RfCUISS/KOoGT8aP4d4Rh1OKOW8uZlBO6JjYfKpdiS1ifyfrEcPSUu7u6WGytpJ5hHyKidvX0++ta0S/1DSrW3trrRpo1RAoZHVvnVH+mXsrQW+izm1gKnmMQ+sZsbEtUuG9J1q2tVXUrySa4MvvAuWTw8Ad/5s5O3nignL11DRj54xre+V4fEHl3pZ1HUdSmEnhRWdvaAlfaLuXr8Fph9nQWsik5YUu6jw1HfahZX4mkPs+CsXP8AVsRvuPjUJ6+ncxcMv4n0UWZ9tt7mC4ikb3/A+yhPl6V2OEbu6W0iiFo7wnYOGGBXZ4s0u207hq8jSNFeRvFbkGBnI6CuHwBO7O9s32D7ynHl2/EVqql6iBdDyxuZNtxVJSj3T0qkpvTmdg3F05h0mcLjAXmbfr6VlUkvjXDO/wDPnNaZxqgfSJ8nGdl+I2/WswjGc5HaiiIPWka3p+p6dHY6hceBeQKojZyAsmOmCds9sH7jR3Dc7QTS257NtWa8pOQfKmfgK8Vb420zHcZTJorK0k2h67daTNe0uc5AI2NdhwqxF+nu1x7FRyDHSuwpVoyr7jG4rPEWbTYDZzQyBvEYIrjbJxmqtPZXhkVXDBHIyKCu7DRY3+uuJQ67ZExyB5VLSbjTYoJIdOYbMWZcknJ771wrHmif9JVwI7Foi/8AEIX8c0tcAsfbZCqnliG5/u2/KpfSRqIutVS2Q5WL3m+J6fv1o76PEj/+fcvgc/je98MDH+T8q11LzAy3T9SHYLzpn0rxrfCo2ftDPw3I/KpWy/VFf6WIq9ivJGBuVUg/MmmTM4gcb3M2I4pCfDJdlGMcp6jPnsTt8KTWKryfD3qfuJ+FtQ1K5MlrcRtCTkRMMEH4+VJt/wAPaxZeI1xp8ixxglnUhlwO+QahfBdBhLAwHu8rY60NayyW11HNCeWRGyDUEBZgqglj0A6mu7oGkXM9/biS3ysg58H+nJG/yNek1Faz0U5Sw0PhfiiK5iSOf3JCNgT1psmCX1q0YdgrDqj4PzFI83CXJH/txjPSgl1vV+HZfDuFM8Q6Bjv8/wBaxcl+Ta4507l1oKxsVGnT3OTsQ7H86qmWLhzTbm9uLaO3blwqgDmPkMioD6TIRFg2c3OB9lcb/jX3EGh3XFdrbzz3r2wKCRYQoZQSP5t9zvVxg9xnLL35wyq4na5nkuJyWkkYsaY+AL/wNVNoWwLj7IPcjy9f0q0fR3rHjlPGtPCz/E5z0+GPzpv4c4JsdGmS6eWS5ul3DMAFU+g7fOterOGHTvRxBIgO461Ajei2FUkb15Eg4evZAsiFHAZWGCDvmhhID3qYf1qCwWx0jTdMMj2drHEXOWbqfn5elE6JYq9xJdsgUOcKMdFHT9+tGWdi98dwfD7+tMcOmw28XNO3Ki9un7PpQTTlxDQah1gAVB1IrmatY211lZUUkjuOtMDyWW4WyDL5sQCfwoO7s4Loj2SUpIP+GTr9x70Lhnxixn3qM9udBg9q8OGJQcFiQO1OigKoUdAMCgFQR386OvK5ixg/3f8AtHZpam2uh35qwlUx0qAqwDanRnZFqpPWrmqo9askSU1Bs9a6mn3BuZo4wd2OKS45X5utM/CTFtWhDdgx/CvTXC49Zqeiwolv4uQqqSqHG2B9pvu3oO4ujdSDGyDZF8h+vnRlqMaEpH/UQ/e5HN/k1yItmFZbXmRGrWtyDkgAA3zU3sg67qCKjExNHKfcqYpNFNtChxFayxOl1EWLxg57krjJ+QGasUkgcwwcb10tRPLdWzYB+vTY9/eFD6hCkFx4ceeVRyjJ7DYf4q4EWPiKlqwdKrWrM7UyBZB6qPWrGqs9arTh/9k=',
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
            // CircleAvatar(
            //   radius:30,
            //   backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
            // ),
            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       color:Colors.white,
            //       shape: BoxShape.circle,
            //     ),
            //     child: Icon(Icons.location_on,
            //     color: Colors.red,
            //     size: 24,
                  
            //     ),
            //   ))
            ],
          ),
        ),
      ),
    );
  }
}
