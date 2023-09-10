// Working with Image Picker
// and Firebase Storage to store files

// import 'materials package
// import 'image picker'
// import 'firebase firestore, database

import 'dart:async';
import 'dart:io' as io;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'firebase_options.dart';
import 'save_as/save_as.dart';


import 'firebase_options.dart';

Future<void> main() async {

 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MaterialApp(
  title: "Image Picker Tutorials"
  home: ImagePicker();
));
}

// 