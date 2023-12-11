import 'package:flutter/material.dart';

class PerfilScreen extends StatefulWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  bool mostrarDatosPersonales = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de Usuario'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/images/perfil.png'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Lógica para cambiar la imagen del perfil
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.camera_alt),
                SizedBox(width: 8.0),
                Text('Cambiar Imagen de Perfil'),
              ],
            ),
          ),
          const Divider(),
          ExpansionTile(
            title: const Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 8.0),
                Text('Datos Personales'),
              ],
            ),
            collapsedTextColor: Colors.black,
            textColor: Colors.black,
            backgroundColor: Colors.white,
            collapsedIconColor: Colors.black,
            trailing: const Icon(Icons.arrow_drop_down),
            onExpansionChanged: (value) {
              setState(() {
                mostrarDatosPersonales = value;
              });
            },
            children: [
              mostrarDatosPersonales
                  ? Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        border: Border.all(color: Colors.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CampoPersonalizado(Icons.person, 'Nombre', 'Diego Alonso Gomez Ramirez'),
                          CampoPersonalizado(Icons.phone, 'Número de Teléfono', '6184423729'),
                          CampoPersonalizado(Icons.email, 'Correo Electrónico', 'diego311004ramirez@gmail.com'),
                          CampoPersonalizado(Icons.lock, 'Contraseña', '******'),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
          const Divider(color: Color.fromARGB(115, 0, 0, 0)),
          OpcionPerfil(Icons.edit, 'Editar Perfil', () {
            // Lógica para editar información del perfil
          }),
          const Divider(color: Color.fromARGB(115, 0, 0, 0)),
          OpcionPerfil(Icons.lock, 'Cambiar Contraseña', () {
            // Lógica para cambiar la contraseña
          }),
          const Divider(color: Color.fromARGB(115, 0, 0, 0)),
        ],
      ),
    );
  }
}

class CampoPersonalizado extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final String contenido;

  const CampoPersonalizado(this.icono, this.titulo, this.contenido, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icono, color: Colors.white),
        const SizedBox(width: 8.0),
        Text('$titulo: $contenido', style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}

class OpcionPerfil extends StatelessWidget {
  final IconData icono;
  final String titulo;
  final VoidCallback onPressed;

  const OpcionPerfil(this.icono, this.titulo, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(icono),
          const SizedBox(width: 8.0),
          Text(titulo),
        ],
      ),
      onTap: onPressed,
    );
  }
}
