import 'package:flutter/material.dart';
import 'package:report_application_2/screens/citasadmin_screen.dart';
import 'package:report_application_2/screens/empresas_admin_screen.dart';
import 'perfil_screen.dart';

// ignore: camel_case_types
class inicioadminScreen extends StatelessWidget {
  const inicioadminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio Admin.'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PerfilScreen())),
          ),
        ],
      ),
       body: Stack(
        children: <Widget>[
          // Fondo con imagen
          Image.asset(
            'assets/images/loginfondo.jpg', // Cambia 'assets/fondo.jpg' con la ruta correcta de tu imagen
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Contenido superpuesto
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '          Bienvenido a UGCPRO',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 80.0), // Ajusta según sea necesario
                // Agrega el icono de administrador aquí
              ],
            ),
          ),
          // Drawer Button
          _buildDrawerButton(context),
        ],
      ),
    );
  }


  Widget _buildDrawerButton(BuildContext context) {
    return Container(
      width: 150,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildDrawerOption('Administrar usuarios', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CitasadminScreen()));
          }),
          _buildDrawerOption('Administrar Empresas', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const empresasadminScreen()));
          }),
        ],
      ),
    );
  }

  Widget _buildDrawerOption(String title, VoidCallback onTap) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }

}
