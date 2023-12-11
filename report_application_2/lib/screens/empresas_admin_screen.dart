import 'package:flutter/material.dart';

// ignore: camel_case_types
class empresasadminScreen extends StatelessWidget {
  const empresasadminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text('Administrar Negocios'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100,
            height: 32,
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
                'raquel@gmail.com',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Acción de añadir
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text('Añadir'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  // Acción de editar
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text('Editar'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  // Acción de eliminar
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text('Eliminar'),
              ),
            ],
          ),
          
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
            height: 100,
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