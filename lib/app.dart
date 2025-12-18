import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'routes/app_routes.dart';

class OSSApp extends StatelessWidget {
  const OSSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Stop Shoppers',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      routes: AppRoutes.routes,
    );
  }
}

