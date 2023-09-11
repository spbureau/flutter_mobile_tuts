// Flutter Splash Screen sample code- 2 Method:
// In App and Native Splash Screens

// #1 Starting with Native Splash
// That's pubspec.yaml configurations for splash screen outside of app

// ##flutter_native_splash - package

// ## In pubspec.yaml, after dev_dep,
// write...
// flutter_native_splash:
//.  color: "hex color"
//.  color_dark: "..." - for dark theme
//.  image: assets/path
//.  image_dark: path/
//.  android: true
//.  ios: true
//.  android_gravity: fill - for image to fill screen
//   ios_content_mode: scaleAspectFill - to fill screen for iOS 

// ## Run ff commands in terminal
// To Generate Splash Screen - Single Command: flutter clean && flutter pub get && flutter pub run flutter_native_splash:create
// [ run combined cmdd any time splash config is change to recreate splash files

// #2 App Splash Screen 

// pasting from working file 11/09/2023

import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart'; 
// import 'package:firebase_core/firebase_core.dart';  
 

//    simon

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),


      routes: {

       '/newPage': (context) => const NewPage(),

      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override

  void initState(){

   super.initState();

   Future.delayed(

    const Duration(seconds: 3), (){

Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NewPage(),));

    }

   );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: const Text("Firestore"),
    ),
    body: const Center(
      child: Column(
        children: [
          Icon(Icons.camera, size: 100),
          Text("Hellooo, Flutter Tuts"),
          CircularProgressIndicator(color: Colors.green),
        ]
      )),
    //
      floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: const Icon(Icons.upload)),
    );
      
  }
}



class NewPage extends StatelessWidget{
  
const NewPage();

@override
Widget build(BuildContext context){
  return const Scaffold(
    body: Center(child: Text("New Page")),
  );
  }
}

