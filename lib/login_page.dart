import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 58, 152, 175),
      body: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Columna 1'),
                SizedBox(height: 20),
                Image.asset("assets/hola.jpg"),
                // Agrega otros widgets aquí en la primera columna
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Columna 2'),
                SizedBox(height: 20),
                // Agrega otros widgets aquí en la segunda columna
              ],
            ),
          ),
        ],
      ),
    ); //Scaffold
  }
}
