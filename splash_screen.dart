// Flutter Splash Screen sample code- 2 Method:
// In App and Native Splash Screens

// Starting with Native Splash
// That's pubspec.yaml configurations for splash screen outside of app

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

