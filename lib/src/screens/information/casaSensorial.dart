import 'package:empower_app/rutes.dart';
import 'package:empower_app/src/utils/bar.dart';
import 'package:flutter/material.dart';

class CasaSensoria extends StatefulWidget {
  const CasaSensoria({Key? key}) : super(key: key);

  @override
  CasaSensoriaState createState() => CasaSensoriaState();
}

class CasaSensoriaState extends State<CasaSensoria> {
  late PageController _pageController;
  int currentPage = 1; // Asume que empiezas en la página 1

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        initialPage: currentPage - 1); // Inicia con la página correcta
    _pageController.addListener(_updateCurrentPage);
  }

  void _updateCurrentPage() {
    int newPage = _pageController.page!.round() +
        1; // Redondea para obtener la página actual
    if (currentPage != newPage) {
      setState(() {
        currentPage =
            newPage; // Actualiza la página actual y refresca el widget
      });
    }
  }

  @override
  void dispose() {
    _pageController.removeListener(_updateCurrentPage);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar.buildAppBar(context),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.pinkAccent),
              accountName: Text("Usuario"),
              accountEmail: Text("usuario@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("U", style: TextStyle(fontSize: 40.0)),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () => Navigator.pushNamed(context, Routes.ubica),
            ),
            ListTile(
              leading: const Icon(Icons.access_alarm_outlined),
              title: const Text('Qué hacer'),
              onTap: () => Navigator.pushNamed(context, Routes.queHacer),
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Comunidades'),
              onTap: () => Navigator.pushNamed(context, Routes.searchScreen),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configuración'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: <Widget>[
                buildCard(context),
                buildSecondCard(context),
                buildThirdCard(context),
                buildFourCard(context),
                buildFiveCard(context),
                buildSixCard(context),
                buildSevenCard(context)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () {
                  if (_pageController.page! > 0) {
                    _pageController.previousPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
                  }
                },
              ),
              Text("$currentPage/7",
                  style: const TextStyle(color: Colors.white)),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                onPressed: () {
                  if (_pageController.page! < 6) {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCard(BuildContext context) {
    // Utiliza esta función para crear tarjetas similares
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 12,
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          elevation: 0.0, // Añade esta línea para eliminar la sombra
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(
                  //   color: Colors.black,
                  //   width: 2,
                  // ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'lib/assets/port2.jpeg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('lib/assets/salassen2.webp',
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Las salas sensoriales',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
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
                      fontSize: MediaQuery.of(context).size.width * 0.055,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Las salas sensoriales para el autismo son espacios especialmente diseñados para estimular los sentidos y mejorar la experiencia sensorial de niños con autismo. La app permitirá a los usuarios crear y personalizar una sala sensorial, seleccionando elementos como:?',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSecondCard(BuildContext context) {
    // Añade aquí los detalles para la segunda tarjeta
    //return buildCard(context); // Reutiliza la función buildCard como ejemplo
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 12,
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          elevation: 0.0, // Añade esta línea para eliminar la sombra
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(
                  //   color: Colors.black,
                  //   width: 2,
                  // ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'lib/assets/port2.jpeg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:
                      Image.asset('lib/assets/espacio.webp', fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Eligiendo el lugar perfecto',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Como cual?',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.055,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '• Busca un espacio tranquilo, alejado del bullicio del hogar. \n• Una habitación sin ventanas o cubre las si tienes puede ser ideal para controlar la luz y el sonido. \n• Si no hay una habitación disponible, un rincón o un vestidor también pueden funcionar. \n• Personaliza la sala sensorial con elementos que se adapten a las necesidades de tu hijo. ',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildThirdCard(BuildContext context) {
    // Añade aquí los detalles para la tercera tarjeta
    // return buildCard(context); // Reutiliza la función buildCard como ejemplo
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 12,
        padding: const EdgeInsets.all(8.0),
        child: Card(
            color: Colors.white,
            elevation: 0.0, // Añade esta línea para eliminar la sombra
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 2,
                      // ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'lib/assets/port2.jpeg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('lib/assets/medida.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Diseñando un espacio a medida',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Como?',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '• ¿Qué quieres incluir? Piensa en los intereses y necesidades de tu hijo. \n• ¿Tamaño? Adapta el espacio a las actividades que se realizarán. \n• Forma: Ten en cuenta la distribución y la ubicación de los elementos. \n• Materiales: Elige materiales seguros y fáciles de limpiar.',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget buildFourCard(BuildContext context) {
    // Añade aquí los detalles para la tercera tarjeta
    // return buildCard(context); // Reutiliza la función buildCard como ejemplo
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 12,
        padding: const EdgeInsets.all(8.0),
        child: Card(
            color: Colors.white,
            elevation: 0.0, // Añade esta línea para eliminar la sombra
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 2,
                      // ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'lib/assets/port2.jpeg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('lib/assets/confortable.webp',
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Un ambiente confortable',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'sigue los siguientes consejos:',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '• Ventilación: Es fundamental para mantener el aire fresco y evitar el sobrecalentamiento. \n• Calefacción y refrigeración: Crea un espacio agradable en cualquier época del año. \n• Iluminación: Opta por luces suaves y regulables, evitando la luz fluorescente. \n• Aislamiento acústico: Reduce el ruido exterior para crear un ambiente tranquilo.',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget buildFiveCard(BuildContext context) {
    // Añade aquí los detalles para la tercera tarjeta
    // return buildCard(context); // Reutiliza la función buildCard como ejemplo
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 12,
        padding: const EdgeInsets.all(8.0),
        child: Card(
            color: Colors.white,
            elevation: 0.0, // Añade esta línea para eliminar la sombra
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 2,
                      // ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'lib/assets/port2.jpeg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('lib/assets/festin.webp',
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Un festín para los sentidos',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Aventura sensorial',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '• Colores: Elige colores que transmitan calma o energía, según el objetivo. \n• Texturas: Incorpora diferentes texturas para estimular el tacto. \n• Sonidos: Ofrece música relajante, sonidos de la naturaleza o instrumentos musicales. \n• Aromas: Usa aceites esenciales o difusores para crear un ambiente agradable.',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget buildSixCard(BuildContext context) {
    // Añade aquí los detalles para la tercera tarjeta
    // return buildCard(context); // Reutiliza la función buildCard como ejemplo
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 12,
        padding: const EdgeInsets.all(8.0),
        child: Card(
            color: Colors.white,
            elevation: 0.0, // Añade esta línea para eliminar la sombra
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 2,
                      // ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'lib/assets/port2.jpeg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('lib/assets/lienzo.webp',
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Un lienzo para la creatividad',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Explosión de talento',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '• Personaliza la sala con los colores favoritos de tu hijo. \n• Decora con elementos que le gusten y le inspiren. \n• Deja espacio para la imaginación y la exploración. \n• Incluye elementos interactivos y creativos.',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget buildSevenCard(BuildContext context) {
    // Añade aquí los detalles para la tercera tarjeta
    // return buildCard(context); // Reutiliza la función buildCard como ejemplo
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 12,
        padding: const EdgeInsets.all(8.0),
        child: Card(
            color: Colors.white,
            elevation: 0.0, // Añade esta línea para eliminar la sombra
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 2,
                      // ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'lib/assets/port2.jpeg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Recuerda:',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '• La seguridad es lo más importante: Evita objetos que puedan suponer un riesgo. \n• Supervisa a tu hijo mientras usa la sala sensorial. \n• Crea una atmósfera de confianza y apoyo. \n• Aromas: Usa aceites esenciales o difusores para crear un ambiente agradable.',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Las salas sensoriales no solo son un espacio de diversión, sino también una herramienta poderosa para el desarrollo y el bienestar de los niños con autismo.',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '¡Anímate a crear este espacio mágico en tu hogar y abre las puertas a un mundo de posibilidades!',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
