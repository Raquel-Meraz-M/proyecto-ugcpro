import 'package:flutter/material.dart';
import 'citasusuarios_screen.dart';
import 'empresas_screen.dart';
import 'perfil_screen.dart';

class CitasScreen extends StatelessWidget {
  const CitasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agendar Citas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PerfilScreen())),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) => _buildPopupMenuItems(context),
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          _buildDrawerButton(context),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  _buildTextField('Nombre', Icons.person),
                  const SizedBox(height: 16.0),
                  _buildTextField('Apellido', Icons.person),
                  const SizedBox(height: 16.0),
                  _buildTextField('Fecha', Icons.calendar_today),
                  const SizedBox(height: 16.0),
                  _buildTextField('Hora', Icons.access_time),
                  const SizedBox(height: 16.0),
                  _buildTextField('Descripción', Icons.description),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Agregar lógica para agendar cita
                    },
                    child: const Text('Agendar Cita'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PopupMenuItem> _buildPopupMenuItems(BuildContext context) {
    return [
  
      _buildPopupMenuItem(Icons.calendar_today, 'Mis Citas', () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const CitasUsuarioScreen()));
      }),
      _buildPopupMenuItem(Icons.business, 'Empresas', () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const empresasScreen()));
      }),
    ];
  }

  PopupMenuItem _buildPopupMenuItem(IconData icon, String title, VoidCallback onTap) {
    return PopupMenuItem(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: onTap,
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
          _buildDrawerOption('Mis Citas', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CitasUsuarioScreen()));
          }),
          _buildDrawerOption('Empresas', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const empresasScreen()));
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
