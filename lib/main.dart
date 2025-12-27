import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    // Handle unsupported platforms gracefully
    if (e is UnsupportedError) {
      // Firebase not configured for this platform, continue without Firebase
    } else {
      rethrow;
    }
  }
  runApp(const OSSApp());
}
