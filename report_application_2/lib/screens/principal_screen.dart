import 'package:flutter/material.dart';
import 'package:report_application_2/screens/login_screen.dart';
import 'nosotros_screen.dart';
import 'servicios_screen.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/UGCPRO.jpg',
            height: 80,
            width: 100,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PaginaPrincipal(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.assignment),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const serviciosScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.location_city),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const nosotrosScreen(),
                ),
              );
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            icon: const Icon(Icons.person),
            color: Colors.white,
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/fondo.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          const Center(
            child: Text(
              'BIENVENIDO A UGCPRO',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
