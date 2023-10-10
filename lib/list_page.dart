import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({
    super.key,
    required this.name,
  });
  final TextEditingController controller = TextEditingController();
  final String name;

  @override
  Widget build(BuildContext context) {
    String barrio;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Row(
          children: [
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  const SizedBox(height: 80),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        width: 500, // Ancho del contenedor
                        height: 200,
                        padding:
                            const EdgeInsets.all(16.0), // Alto del contenedor
                        color: Color.fromARGB(207, 162, 169, 172),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                'Seleccione El Barrio',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'NerkoOne', fontSize: 30.0),
                              ),
                              const Divider(
                                height: 10.0,
                              ),
                              TextField(
                                enableInteractiveSelection: false,
                                //  obscureText: true,
                                decoration: const InputDecoration(
                                    hintText: 'Barrio',
                                    labelText: '',
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 16.0),
                                    //suffixIcon: const Icon(Icons.lock_outline),
                                    // border: OutlineInputBorder(
                                    //     borderRadius: BorderRadius.circular(20.0)),
                                    filled: true,
                                    fillColor: Colors.white),
                                onSubmitted: (valor) {
                                  barrio = valor;
                                  //print('El Password es $password');
                                },
                              ),
                              const Divider(
                                height: 15.0,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  //En el botón simplemente empujamos la ruta de Home
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => ListPage(
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
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Buscar",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.black),
                                  ),
                                ),
                              ),
                            ]),
                      )),
                  const Divider(
                    height: 100.0,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                          width: 500, // Ancho del contenedor
                          height: 450,
                          //padding:
                          //   const EdgeInsets.all(16.0), // Alto del contenedor
                          color: const Color.fromARGB(207, 162, 169, 172),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  'Coloque los datos de su vivienda',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'NerkoOne',
                                    fontSize: 30.0,
                                  ),
                                ),
                                const Divider(
                                  height: 50.0,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const Text(
                                          'Barrio',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: 'NerkoOne',
                                              fontSize: 15.0),
                                        ),
                                        const Divider(
                                          height: 15.0,
                                        ),
                                        TextField(
                                          enableInteractiveSelection: false,
                                          //obscureText: true,
                                          decoration: const InputDecoration(
                                              hintText: 'Barrio',
                                              labelText: '',
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 16.0),
                                              //suffixIcon: const Icon(Icons.lock_outline),
                                              // border: OutlineInputBorder(
                                              //     borderRadius: BorderRadius.circular(20.0)),
                                              filled: true,
                                              fillColor: Colors.white),
                                          onSubmitted: (valor) {
                                            barrio = valor;
                                            //print('El Password es $password');
                                          },
                                        ),
                                        const Divider(
                                          height: 25.0,
                                        ),
                                        const Text(
                                          'Garaje',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: 'NerkoOne',
                                              fontSize: 15.0),
                                        ),
                                        const Divider(
                                          height: 15.0,
                                        ),
                                        TextField(
                                          enableInteractiveSelection: false,
                                          //obscureText: true,
                                          decoration: const InputDecoration(
                                              hintText: 'Garaje',
                                              labelText: '',
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 16.0),
                                              //suffixIcon: const Icon(Icons.lock_outline),
                                              // border: OutlineInputBorder(
                                              //     borderRadius: BorderRadius.circular(20.0)),
                                              filled: true,
                                              fillColor: Colors.white),
                                          onSubmitted: (valor) {
                                            barrio = valor;
                                            //print('El Password es $password');
                                          },
                                        ),
                                      ],
                                    )),
                                    Expanded(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const Text(
                                          'Habitaciones',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: 'NerkoOne',
                                              fontSize: 15.0),
                                        ),
                                        const Divider(
                                          height: 15.0,
                                        ),
                                        TextField(
                                          enableInteractiveSelection: false,
                                          //   obscureText: true,
                                          decoration: const InputDecoration(
                                              hintText: 'Habitaciones',
                                              labelText: '',
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 16.0),
                                              //suffixIcon: const Icon(Icons.lock_outline),
                                              // border: OutlineInputBorder(
                                              //     borderRadius: BorderRadius.circular(20.0)),
                                              filled: true,
                                              fillColor: Colors.white),
                                          onSubmitted: (valor) {
                                            barrio = valor;
                                            //print('El Password es $password');
                                          },
                                        ),
                                        const Divider(
                                          height: 25.0,
                                        ),
                                        const Text(
                                          'm2',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: 'NerkoOne',
                                              fontSize: 15.0),
                                        ),
                                        const Divider(
                                          height: 15.0,
                                        ),
                                        TextField(
                                          enableInteractiveSelection: false,
                                          //   obscureText: true,
                                          decoration: const InputDecoration(
                                              hintText: 'm2',
                                              labelText: '',
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 16.0),
                                              //suffixIcon: const Icon(Icons.lock_outline),
                                              // border: OutlineInputBorder(
                                              //     borderRadius: BorderRadius.circular(20.0)),
                                              filled: true,
                                              fillColor: Colors.white),
                                          onSubmitted: (valor) {
                                            barrio = valor;
                                            //print('El Password es $password');
                                          },
                                        ),
                                      ],
                                    )),
                                  ],
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
                                        builder: (_) => ListPage(
                                          name: controller.text,
                                        ),
                                      ),
                                    );
                                  },
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white)),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Predecir",
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ])))
                ])),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 125),
                  const Text(
                    'INFORMACION',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'NerkoOne',
                        fontSize: 50.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    height: 20.0,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                          width: 800, // Ancho del contenedor
                          height: 50,
                          padding:
                              const EdgeInsets.all(16.0), // Alto del contenedor
                          color: Color.fromARGB(207, 255, 255, 255),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                    const Text(
                                      'Barrio',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: 'NerkoOne',
                                          fontSize: 15.0),
                                    )
                                  ])),
                              Expanded(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                    const Text(
                                      'Mt2',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: 'NerkoOne',
                                          fontSize: 15.0),
                                    )
                                  ])),
                              Expanded(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                    const Text(
                                      'Habitaciones',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: 'NerkoOne',
                                          fontSize: 15.0),
                                    )
                                  ])),
                              Expanded(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                    const Text(
                                      'Garaje',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: 'NerkoOne',
                                          fontSize: 15.0),
                                    )
                                  ])),
                              Expanded(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                    const Text(
                                      'Precio',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: 'NerkoOne',
                                          fontSize: 15.0),
                                    )
                                  ]))
                            ],
                          ))),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                          width: 800, // Ancho del contenedor
                          height: 600,
                          padding:
                              const EdgeInsets.all(16.0), // Alto del contenedor
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.center,
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.center,
                                      children: <Widget>[
                                    const Text(
                                      'Bolivar',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontFamily: 'NerkoOne',
                                          fontSize: 15.0),
                                    )
                                  ])),
                              Expanded(
                                  child: Column(children: <Widget>[
                                const Text(
                                  '350',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'NerkoOne', fontSize: 15.0),
                                )
                              ])),
                              Expanded(
                                  child: Column(children: <Widget>[
                                const Text(
                                  '3',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'NerkoOne', fontSize: 15.0),
                                )
                              ])),
                              Expanded(
                                  child: Column(children: <Widget>[
                                const Text(
                                  'si',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'NerkoOne', fontSize: 15.0),
                                )
                              ])),
                              Expanded(
                                  child: Column(children: <Widget>[
                                const Text(
                                  '4000000',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'NerkoOne', fontSize: 15.0),
                                )
                              ]))
                            ],
                          )))
                ],
              ),
            ),
          ],
        ));
  }
}
