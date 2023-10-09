import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    String nombre;
    String email;
    String password;
    return Scaffold(
      backgroundColor: Color.fromARGB(207, 56, 60, 61),
      body: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double
                      .infinity, // Hace que el contenedor ocupe todo el ancho disponible
                  height: 955,
                  child: Image.asset(
                    "assets/hola.jpg",
                    fit: BoxFit.cover,
                  ),
                  // Agrega otros widgets aquí en la primera columna
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100.0,
                  backgroundColor: Color.fromARGB(223, 177, 184, 173),
                  backgroundImage: AssetImage('assets/casa.png'),
                ),
                Text('Columna 2'),
                SizedBox(height: 20),

                Text(
                  'Login',
                  style: TextStyle(fontFamily: 'NerkoOne', fontSize: 50.0),
                ),
                Text(
                  'EJEMPLO N°2',
                  style: TextStyle(fontFamily: 'NerkoOne', fontSize: 20.0),
                ),
                SizedBox(
                  width: 160.0,
                  height: 15.0,
                  child: Divider(color: Colors.blueGrey[600]),
                ),
                TextField(
                  enableInteractiveSelection: false,
                  // autofocus: true,
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                      hintText: 'USER-NAME',
                      labelText: 'User name',
                      suffixIcon: Icon(Icons.verified_user),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onSubmitted: (valor) {
                    nombre = valor;
                    print('El nombre es $nombre');
                  },
                ),
                Divider(
                  height: 18.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                      suffixIcon: Icon(Icons.alternate_email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onSubmitted: (valor) {
                    email = valor;
                    print('El Email es $email');
                  },
                ),
                Divider(
                  height: 15.0,
                ),
                TextField(
                  enableInteractiveSelection: false,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  onSubmitted: (valor) {
                    password = valor;
                    print('El Password es $password');
                  },
                ),
                Divider(
                  height: 15.0,
                ),
                //SizedBox(
                //width: double.infinity,
                //child: FlatButton(
                // hoverColor: Colors.lightBlue,
                // child: Text('Sing in',
                //style: TextStyle(
                // color: Colors.white70,
                // fontSize: 30.0,
                // fontFamily:'NerkoOne'
                // ),
                // ),
                // color: Colors.lightBlueAccent,
                // onPressed: (){
                //    print('diste clic');
                //   },
                // ),
                // Agrega otros widgets aquí en la segunda columna
                //  )
              ],
            ),
          ),
        ],
      ),
    ); //Scaffold
  }
}
