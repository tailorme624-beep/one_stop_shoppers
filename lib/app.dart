// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'routes/app_routes.dart';
import 'core/theme/app_theme.dart';
import 'splash_screen.dart';

class OSSApp extends StatelessWidget {
  const OSSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Stop Shoppers',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: AppRoutes.routes,
      home: const SplashScreen(),
    );
  }
}
