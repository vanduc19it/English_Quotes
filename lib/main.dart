import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/packages/quote/quote.dart';
import 'package:flutter_app/pages/landing_page.dart';
import 'package:flutter_app/values/app_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Quotes().getAll();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: LandingPage(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: AppBar(
//         //   leading: IconButton(
//         //     icon: Icon(Icons.abc_outlined),
//         //     onPressed: () {
//         //       print("icon leading");
//         //     },
//         //   ),
//         //   title: Text('The first my flutter app'),
//         // ),
//         body: LandingPage());
//     // Container(child: Image.asset(AppUI.imageGirl));
//   }
// }
