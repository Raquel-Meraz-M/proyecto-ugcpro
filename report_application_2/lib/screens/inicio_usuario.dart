import 'package:flutter/material.dart';
import 'package:report_application_2/screens/agendarcitas_screen.dart';
import 'citasusuarios_screen.dart';
import 'empresas_screen.dart';
import 'perfil_screen.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio Usuario'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PerfilScreen())),
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          _buildDrawerButton(context),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[],
              ),
            ),
          ),
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
          _buildDrawerOption('Agendar Cita', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AgendarScreen()));
          }),
          _buildDrawerOption('Mis Citas', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CitasUsuarioScreen()));
          }),
          _buildDrawerOption('Empresas', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const empresasScreen()));
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

  // ignore: unused_element
  Widget _buildTextField(String labelText, IconData prefixIcon) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon),
      ),
    );
  }
}
