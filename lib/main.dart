import 'package:flutter/material.dart';
import 'package:uts_9882405221111005/profil_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        // Added SingleChildScrollView to allow scrolling if content overflows
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/selamat_datang.png'),
                ),
              ),
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const profil_page()),
                        );
                      },
                      child: Text('Go to Profile'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  debugShowCheckedModeBanner: false,
//       routes: {
//         '/profil': (context) => const profil_page(),
//       },
//       home: Scaffold(
//         body: SingleChildScrollView(
//           // Added SingleChildScrollView to allow scrolling if content overflows
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 100),
//               Container(
//                 height: 200,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/selamat_datang.png'),
//                   ),
//                 ),
//               ),
//               Form(
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       decoration: InputDecoration(
//                         labelText: 'Username',
//                       ),
//                     ),
//                     TextFormField(
//                       decoration: InputDecoration(
//                         labelText: 'Password',
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Align(
//                       alignment: Alignment.centerRight,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const profil_page()),
//                           );
//                         },
//                         child: Text('Go to Profile'),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
      //   ),
      // ),