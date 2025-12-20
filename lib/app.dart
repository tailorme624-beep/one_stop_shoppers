import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'routes/app_routes.dart';
import 'core/theme/app_theme.dart';

class OSSApp extends StatelessWidget {
  const OSSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          initialRoute: snapshot.data == null
              ? AppRoutes.login
              : AppRoutes.home,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
