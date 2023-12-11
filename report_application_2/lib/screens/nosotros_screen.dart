import 'package:flutter/material.dart';
// Agregado para importar Google Fonts

// ignore: camel_case_types
class nosotrosScreen extends StatelessWidget {
  const nosotrosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de Nosotros'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/UGCPRO.jpg', // Asegúrate de tener el logo en la carpeta de assets
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Nuestro equipo se embarcó en la realización de un emocionante proyecto que le dimos como nombre UGCPRO, con el objetivo de crear un sitio web que revolucionara la forma en que las personas agendan citas. Utilizando una mezcla de lenguajes de programación, creamos un sitio web intuitivo y dinámico que permite a los usuarios programar citas en una variedad de negocios. Mediante la implementación de una interfaz atractiva y funcionalidades interactivas, logramos proporcionar una experiencia fluida para los usuarios. Además, diseñamos una estructura escalable que permite la incorporación de múltiples negocios en la plataforma. El proyecto UGCPRO no solo resalta nuestras habilidades técnicas, sino también nuestra capacidad para ofrecer soluciones prácticas y creativas a problemas del mundo real',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            const Text(
              'UGCPRO',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
