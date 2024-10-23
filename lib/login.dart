import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController emailTEC = TextEditingController();
  final TextEditingController passwordTEC = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailTEC,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                icon: Icon(Icons.email),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordTEC,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                icon: Icon(Icons.password),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () => {
                  //Navigator.pushNamed(context, "/home")
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
