import 'package:empower_app/rutes.dart';
import 'package:empower_app/src/utils/bar.dart';
import 'package:empower_app/src/utils/bottom_navigation.dart.dart';
import 'package:flutter/material.dart';

class CasaSensoria extends StatefulWidget {
  const CasaSensoria({Key? key}) : super(key: key);

  @override
  CasaSensoriaState createState() => CasaSensoriaState();
}

class CasaSensoriaState extends State<CasaSensoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar.buildAppBar(context),
      //menu lateral
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pinkAccent, // Cambia esto al color que desees
              ),
              accountName: Text("Usuario"),
              accountEmail: Text("usuario@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "U",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pushNamed(context, Routes.ubica);
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configuración'),
              onTap: () {
                // Actualiza el estado de la aplicación
                // ...
                // Luego cierra el drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.access_alarm_outlined),
              title: const Text('Que hacer'),
              onTap: () {
                Navigator.pushNamed(context, Routes.queHacer);
                // Navigator.pop(context);
              },
            ),
            // Agrega más ListTile aquí para más opciones
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Container(
          // color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.9, // Altura del cuerpo
          width: MediaQuery.of(context).size.width * 0.94, // Ancho del cuerpo
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey[200] as Color, // Color de inicio del gradiente
                Colors.grey[900] as Color, // Color de fin del gradiente
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white, //const Color.fromARGB(255, 237, 236, 236),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(
                  10), // Ajusta el radio del borde como necesites
            ),
            // decoration: BoxDecoration(
            //   color: const Color.fromARGB(
            //       255, 237, 236, 236), // Color de fondo del Container interno
            //   borderRadius: BorderRadius.circular(10),
            // ),
            child: Center(
              child: Column(mainAxisSize: MainAxisSize.max, children: [
                // SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),

                    // Ajusta el radio del borde como necesites
                  ), // Ajusta el radio del borde como necesites
                  child: Image.asset(
                    'lib/assets/port2.jpeg',
                    fit: BoxFit
                        .fitWidth, // Ajusta la imagen para ocupar todo el ancho manteniendo sus proporciones
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                const Text(
                  '¿salas sensoriales?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // ...

                SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                Expanded(
                    child: ListView(children: <Widget>[
                  //       GestureDetector(
                  //         onTap: () {
                  //           Navigator.pushNamed(context, Routes.leve);
                  //         },
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          // AspectRatio(
                          //   aspectRatio: 16 /
                          //       6, // Ajusta esto a la relación de aspecto de tus imágenes
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(4.0),
                          //     child: ClipRRect(
                          //         borderRadius: BorderRadius.circular(
                          //             10), // Ajusta el radio del borde como necesites
                          //         child: Image.asset(
                          //           'lib/assets/crisis1.jpeg', // Asegúrate de que la ruta de tu imagen sea correcta
                          //           fit: BoxFit
                          //               .cover, // Esto hará que la imagen ocupe todo el ancho de la tarjeta
                          //         )),
                          //   ),
                          // ),
                          // const Padding(
                          //   padding: EdgeInsets.all(8.0),
                          //   child: Text(
                          //     'Crisis Leve',
                          //     style: TextStyle(
                          //         fontSize: 20, fontWeight: FontWeight.bold),
                          //   ),
                          // ),
                          // const Padding(
                          //     padding: EdgeInsets.all(8.0),
                          //     child: Text(
                          //         'En este nivel, el niño muestra signos de irritabilidad o frustración leve. Puede expresar malestar verbalmente o mostrar inquietud física.',
                          //         style: TextStyle(
                          //             fontSize: 15,
                          //             fontWeight: FontWeight.normal),
                          //         textAlign: TextAlign.justify)),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      10), // Ajusta el radio del borde como necesites
                                  child: Image.asset(
                                    'lib/assets/salassen2.webp', // Asegúrate de que la ruta de tu imagen sea correcta
                                    fit: BoxFit
                                        .cover, // Esto hará que la imagen ocupe todo el ancho de la tarjeta
                                  ))),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Las salas sensoriales',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.035,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Que es una sala sensorial?',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.055,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Align(
                              // alignment: Alignment.centerLeft,
                              child: Text(
                                  'Las salas sensoriales para el autismo son espacios especialmente diseñados para estimular los sentidos y mejorar la experiencia sensorial de niños con autismo. La app permitirá a los usuarios crear y personalizar una sala sensorial virtual, seleccionando elementos como:?',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.035,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.justify),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]))
              ]),
            ),
          ),
        ),
      )),
    );
  }
}
