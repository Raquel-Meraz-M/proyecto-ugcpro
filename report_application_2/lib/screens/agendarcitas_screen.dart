import 'package:flutter/material.dart';
import 'package:report_application_2/screens/citas_screen.dart';

class AgendarScreen extends StatelessWidget {
  const AgendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agendar Cita'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildTextField('Nombre', Icons.person),
              _buildTextField('Apellido', Icons.person),
              _buildTextField('Negocio', Icons.business),
              _buildTextField('Fecha', Icons.calendar_today),
              _buildTextField('Hora', Icons.access_time),
              _buildTextField('Descripción', Icons.description),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes agregar la lógica para guardar la cita
                  // Puedes obtener los valores de los campos con:
                  // _nameController.text, _lastNameController.text, ...
                  // Luego puedes guardar la cita en miscitas_screen.dart
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CitasScreen()), // Navega a la pantalla miscitas_screen.dart
                  );
                },
                child: const Text('Agendar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, IconData prefixIcon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          border: const OutlineInputBorder(),
          prefixIcon: Icon(prefixIcon),
        ),
      ),
    );
  }
}
