import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFD9958F),
        body: Column(
          children: [
            const Spacer(),
            const Text("hola",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                )),
            const Spacer(),
            TextFormField(),
            const Spacer(),
            SizedBox(
              height: 60,
              width: 120,
              child: InkWell(),
            ),
          ],
        )); //Scaffold
  }
}
