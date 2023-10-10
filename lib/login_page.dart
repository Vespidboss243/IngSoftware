import 'package:flutter/material.dart';
import 'package:hola1/Pagina_principal.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String nombre;
    String email;
    String password;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const Spacer(),
          const SizedBox(height: 20),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                  width: 600, // Ancho del contenedor
                  height: 600,
                  padding: const EdgeInsets.all(16.0), // Alto del contenedor
                  color: Color.fromARGB(207, 112, 117, 119),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Iniciar Sesión',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'NerkoOne',
                              fontSize: 60.0,
                              color: Colors.white),
                        ),
                        //const Spacer(),
                        const SizedBox(
                          width: 160.0,
                          height: 50.0,
                          child: Divider(),
                        ),
                        TextField(
                          enableInteractiveSelection: false,
                          // autofocus: true,
                          textCapitalization: TextCapitalization.characters,
                          decoration: InputDecoration(
                              hintText: 'Usuario',
                              labelText: 'Usuario',
                              suffixIcon: const Icon(Icons.verified_user),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              filled: true,
                              fillColor: Colors.white),
                          onSubmitted: (valor) {
                            nombre = valor;
                            //print('El nombre es $nombre');
                          },
                        ),
                        //const Spacer(),
                        const Divider(
                          height: 30.0,
                        ),
                        TextField(
                          enableInteractiveSelection: false,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Contraseña',
                              labelText: 'Contraseña',
                              suffixIcon: const Icon(Icons.lock_outline),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              filled: true,
                              fillColor: Colors.white),
                          onSubmitted: (valor) {
                            password = valor;
                            //print('El Password es $password');
                          },
                        ),

                        const Divider(
                          height: 30.0,
                        ),

                        ElevatedButton(
                          onPressed: () {
                            //En el botón simplemente empujamos la ruta de Home
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => HomePage(
                                  name: controller.text,
                                ),
                              ),
                            );
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Ingresar",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.black),
                            ),
                          ),
                        ),
                        const Divider(
                          height: 15.0,
                        ),
                      ]))),
          // CircleAvatar(
          //   radius: 100.0,
          //  backgroundColor: Color.fromARGB(223, 177, 184, 173),
          //  backgroundImage: AssetImage('assets/casa.png'),
          // ),

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
        ],
      )),
    ); //Scaffold
  }
}
