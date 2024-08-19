import 'package:face_app_flutter/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: authProvider.emailController,
              decoration: const InputDecoration(
                hintText: 'Enter Email/User ID',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: authProvider.passwordController,
              decoration: InputDecoration(
                hintText: 'Enter password',
                suffix: InkWell(
                  onTap: () {
                    authProvider.setToggle();
                  },
                  child: Icon(authProvider.toggle == true ?  Icons.visibility_off : Icons.visibility),
                ),
              ),
              obscureText: authProvider.toggle,
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                authProvider.login();
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.center,
                child: authProvider.loading == true
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
