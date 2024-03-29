import 'package:empower_app/rutes.dart';
import 'package:empower_app/src/utils/bar.dart';
import 'package:empower_app/src/utils/bottom_navigation.dart.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url =
    Uri.parse('https://autismo.org.es/el-autismo/que-es-el-autismo/');

class Severa extends StatefulWidget {
  const Severa({Key? key}) : super(key: key);

  @override
  SeveraState createState() => SeveraState();
}

class SeveraState extends State<Severa> {
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
                  '¿Nivel 3: Crisis Severa?',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
                          '1. Pérdida de control emocional total.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        Text(
                          '2. Comportamientos desafiantes o agresivos.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        Text(
                          '3. Puede experimentar cambios extremos en la conducta o el estado de ánimo.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        Text(
                          '4. Puede presentar autolesiones o comportamientos peligrosos.',
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
                          '1. Priorizar la seguridad del niño y de quienes lo rodean.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        Text(
                          '2. Implementar técnicas de contención seguras si es necesario, asegurándose de no restringir la respiración o causar daño físico.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        Text(
                          '3. Solicitar ayuda profesional de inmediato si la situación lo requiere.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        Text(
                          '4. Después de la crisis, proporcionar un ambiente tranquilo y de apoyo para ayudar al niño a recuperarse emocionalmente.',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.018,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.90,
                              padding: const EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Colors.white, // Color del contenedor
                                borderRadius: BorderRadius.circular(
                                    10), // Radio del borde
                                border: Border.all(
                                  color: Colors.black, // Color del borde
                                  width: 1, // Ancho del borde
                                ),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Para obtener más información sobre el autismo y cómo brindar apoyo, te invito a visitar esta página: ',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.018,
                                    ),
                                  ),

                                  //linea divisora
                                  Divider(
                                    color: Colors.black,
                                    height: MediaQuery.of(context).size.height *
                                        0.02,
                                    thickness: 1,
                                  ),

                                  Row(
                                    children: <Widget>[
                                      ElevatedButton(
                                        onPressed: _launchUrl,
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.pinkAccent),
                                        ),
                                        child: const Text(
                                          'start',
                                          style: TextStyle(
                                            color: Colors
                                                .white, // Cambia esto al color que prefieras
                                          ),
                                        ),

                                        //poner color al texto
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.08), // Espacio entre el botón y el texto
                                      Text(
                                        'know more',
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.018,
                                        ),
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2),
                                      const Icon(
                                          Icons.chevron_right), // Icono de >
                                    ],
                                  ),
                                ],
                              ),
                              // El resto de tu código aquí
                            ),
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

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
