import 'package:empower_app/rutes.dart';
import 'package:empower_app/src/utils/bar.dart';
import 'package:empower_app/src/utils/bottom_navigation.dart.dart';
import 'package:flutter/material.dart';

class QueHacer extends StatefulWidget {
  const QueHacer({Key? key}) : super(key: key);

  @override
  QueHacerState createState() => QueHacerState();
}

class QueHacerState extends State<QueHacer> {
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
              leading: const Icon(Icons.sensor_occupied_sharp),
              title: const Text('Casa Sensorial'),
              onTap: () {
                // Navigator.pushNamed(context, Routes.ubica);
                Navigator.pop(context);
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
              color: const Color.fromARGB(
                  255, 237, 236, 236), // Color de fondo del Container interno
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(mainAxisSize: MainAxisSize.max, children: [
                // SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(
                        10), // Ajusta el radio del borde como necesites
                    topRight: Radius.circular(
                        10), // Ajusta el radio del borde como necesites
                  ), // Ajusta el radio del borde como necesites
                  child: Image.asset(
                    'lib/assets/port2.jpeg', // Asegúrate de que la ruta de tu imagen sea correcta
                    fit: BoxFit
                        .fitWidth, // Ajusta la imagen para ocupar todo el ancho manteniendo sus proporciones
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                const Text(
                  '¿Qué hacer ante una crisis?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // ...

                SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                Expanded(
                  child: ListView(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.leve);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                AspectRatio(
                                  aspectRatio: 16 /
                                      6, // Ajusta esto a la relación de aspecto de tus imágenes
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            10), // Ajusta el radio del borde como necesites
                                        child: Image.asset(
                                          'lib/assets/crisis1.jpeg', // Asegúrate de que la ruta de tu imagen sea correcta
                                          fit: BoxFit
                                              .cover, // Esto hará que la imagen ocupe todo el ancho de la tarjeta
                                        )),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Crisis Leve',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                        'En este nivel, el niño muestra signos de irritabilidad o frustración leve. Puede expresar malestar verbalmente o mostrar inquietud física.',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.justify))
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.moderada);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Column(
                              children: <Widget>[
                                AspectRatio(
                                  aspectRatio: 16 /
                                      6, // Ajusta esto a la relación de aspecto de tus imágenes
                                  child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            10), // Ajusta el radio del borde como necesites
                                        child: Image.asset(
                                          'lib/assets/crisis2.jpeg', // Asegúrate de que la ruta de tu imagen sea correcta
                                          fit: BoxFit
                                              .cover, // Esto hará que la imagen ocupe todo el ancho de la tarjeta
                                        ),
                                      )),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Crisis Moderada',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                        'La crisis moderada se caracteriza por un aumento en la agitación y la ansiedad del niño. Puede mostrar comportamientos repetitivos o estereotipados, y tener dificultades para comunicarse efectivamente.',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.justify))
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.severa);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Column(
                              children: <Widget>[
                                AspectRatio(
                                  aspectRatio: 16 /
                                      6, // Ajusta esto a la relación de aspecto de tus imágenes
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10), // Ajusta el radio del borde como necesites
                                      child: Image.asset(
                                        'lib/assets/crisis3.jpeg', // Asegúrate de que la ruta de tu imagen sea correcta
                                        fit: BoxFit
                                            .cover, // Esto hará que la imagen ocupe todo el ancho de la tarjeta
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Crisis Severa',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'En este nivel, el niño pierde completamente el control emocional. Puede exhibir comportamientos desafiantes o agresivos, e incluso puede presentar autolesiones o comportamientos peligrosos.',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                      textAlign: TextAlign.justify,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )

// ...
              ]),
            ),
          ),
        ),
      )),
    );
  }
}
