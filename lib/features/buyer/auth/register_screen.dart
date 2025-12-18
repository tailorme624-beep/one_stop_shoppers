import 'package:flutter/material.dart';
import '../../../core/services/auth_service.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Account')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: emailCtrl,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: passCtrl,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () async {
                await auth.registerBuyer(
                  emailCtrl.text,
                  passCtrl.text,
                );
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('Register'),
            )
          ],
        ),
      ),
    );
  }
}

