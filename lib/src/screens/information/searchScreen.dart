import 'package:empower_app/rutes.dart';
import 'package:empower_app/src/utils/bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Comunidades de Apoyo',
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Map<String, String>> communities = [
    {
      "name": "ASAN: autisticadvocacy.org",
      "url":
          "https://autisticadvocacy.org/book/bienvenidos-a-la-comunidad-autista/",
      "logo": "lib/assets/asan.png"
    },
    {
      "name": "ABA CENTERS",
      "url": "https://abacentersfl.com/es/blog/comunidad-para-el-autismo/",
      "logo": "lib/assets/aba.webp"
    },
    {
      "name": "AUTISMOTEAYUDO",
      "url": "https://www.autismoteayudo.com/castellano/recursos/asociaciones/",
      "logo": "lib/assets/teayudo.png"
    },
    {
      "name": "IEAUTISM",
      "url": "https://ieautism.org/es/grupos-de-apoyo-para-el-autismo/",
      "logo": "lib/assets/SOCIETY.png"
    },
    {
      "name": "AUTISMO ANDALUCÍA",
      "url": "https://www.autismoandalucia.org/autismo/comunidad/",
      "logo": "lib/assets/federacion.png"
    },
    {
      "name": "AUTISMOSORIA",
      "url": "https://autismosoria.org/nuestro-trabajo-es/para-la-comunidad",
      "logo": "lib/assets/autismo_soria_logo.png"
    },
    {
      "name": "APACV",
      "url": "https://apacv.org/",
      "logo": "lib/assets/cropped-logo-blanco-1.png"
    },
    {
      "name": "TEXAS",
      "url": "https://www.texasautismsociety.org/es/",
      "logo": "lib/assets/Affiliate.png"
    }
  ]; // Ejemplo de datos
  String query = '';

  void updateQuery(String newQuery) {
    setState(() {
      query = newQuery;
    });
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredCommunities = communities
        .where((community) =>
            community["name"]!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Buscar Comunidades de Apoyo'),
      // ),
      backgroundColor: Colors.white,
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
              leading: const Icon(Icons.sensor_occupied_sharp),
              title: const Text('Casa Sensorial'),
              onTap: () {
                Navigator.pushNamed(context, Routes.casaSesorial);
                // Navigator.pop(context);
              },
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
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: updateQuery,
              decoration: const InputDecoration(
                labelText: 'Buscar',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredCommunities.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Define el radio aquí
                      side: const BorderSide(
                          color: Colors.grey,
                          width: 1.0), // Define el borde aquí
                    ),
                    child: ListTile(
                      leading: filteredCommunities[index]["logo"] != null
                          ? Image.asset(filteredCommunities[index]["logo"]!)
                          : null,
                      title: Text(filteredCommunities[index]["name"]!),
                      onTap: () =>
                          _launchUrl(filteredCommunities[index]["url"]!),
                    ),
                  ),
                );
              },
            ),
          ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: filteredCommunities.length,
          //     itemBuilder: (context, index) {
          //       return Container(
          //         margin: const EdgeInsets.symmetric(vertical: 8.0),
          //         child: ListTile(
          //           leading: filteredCommunities[index]["logo"] != null
          //               ? Image.asset(filteredCommunities[index]["logo"]!)
          //               : null,
          //           title: Text(filteredCommunities[index]["name"]!),
          //           onTap: () => _launchUrl(filteredCommunities[index]["url"]!),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
