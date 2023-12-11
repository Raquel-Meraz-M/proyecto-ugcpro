import 'package:flutter/material.dart';

// ignore: camel_case_types
class empresasScreen extends StatelessWidget {
  const empresasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 13, 71),
        elevation: 0,
        title: const Text('Negocios Vinculados'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100, // Ajusta el ancho según tus necesidades
            height: 32, // Ajusta el alto según tus necesidades
            child: Image.asset(
              'assets/images/UGCPRO.jpg',
              fit: BoxFit.contain,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Acción de búsqueda
            },
          ),
          const SizedBox(width: 8),
          const Row(
            children: [
              Text(
                'Usuario',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 8),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: kToolbarHeight),
          const SizedBox(height: kToolbarHeight),
          _buildNegocioCard(
            'Fotografía',
            'Ofrecemos servicios de fotografía profesional para eventos y sesiones personalizadas.',
            'assets/images/fotografia.jpg',
          ),
          _buildNegocioCard(
            'Maquillaje',
            'Especialistas en maquillaje para ocasiones especiales y sesiones de belleza.',
            'assets/images/maquillaje.jpg',
          ),
          _buildNegocioCard(
            'Barbería',
            'Corte de cabello y cuidado facial para hombres. La mejor experiencia de barbería.',
            'assets/images/barberia.jpg',
          ),
        ],
      ),
    );
  }

  Widget _buildNegocioCard(String title, String description, String imagePath) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.contain,
            height: 100, // Ajusta la altura de la imagen según tus necesidades
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
