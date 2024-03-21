import 'package:empower_app/rutes.dart';
import 'package:empower_app/src/utils/bar.dart';
import 'package:empower_app/src/utils/bottom_navigation.dart.dart';
import 'package:flutter/material.dart';

class Leve extends StatefulWidget {
  const Leve({Key? key}) : super(key: key);

  @override
  LeveState createState() => LeveState();
}

class LeveState extends State<Leve> {
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
              color: Colors.white, // Color de fondo del Container interno
              // color: const Color.fromARGB(
              //     255, 237, 236, 236), // Color de fondo del Container interno
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(mainAxisSize: MainAxisSize.max, children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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
                Text(
                  '¿Nivel 1: Crisis Leve?',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Align(
                //     alignment: Alignment.centerLeft,
                //     child: Text(
                //       'Características:',
                //       style: TextStyle(
                //         fontSize: MediaQuery.of(context).size.height * 0.024,
                //         color: Colors.pinkAccent,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ),
                // ),

                // ...

                // SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ListView(
                      children: <Widget>[
                        Text(
                          'Características:',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.024,
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '1. Irritabilidad o frustración leve.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        Text(
                          '2. Puede expresar incomodidad o malestar verbalmente.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        Text(
                          '3. Puede mostrar signos de inquietud o tensión física.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        Text(
                          '4. Tiende a estar más sensible a estímulos sensoriales.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        Text(
                          'Estrategias de manejo:',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.024,
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '1. Mantener la calma y proporcionar un ambiente tranquilo.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        Text(
                          '2. Reducir la exposición a estímulos sensoriales abrumadores.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        Text(
                          '3. Ofrecer opciones simples y claras para ayudar al niño a sentirse más controlado.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        Text(
                          '4. Implementar técnicas de relajación como respiraciones profundas o ejercicios de estiramiento suaves.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      )),
    );
  }
}
