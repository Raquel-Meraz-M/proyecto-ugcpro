import 'package:flutter/material.dart';

class CitasUsuarioScreen extends StatelessWidget {
  const CitasUsuarioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 13, 71), // Cambiar color a azul
        elevation: 0,
        title: const Text('Citas del Usuario'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 200, // Ajusta el ancho según tus necesidades
            height: 200, // Ajusta el alto según tus necesidades
            child: Image.asset(
              'assets/images/UGCPRO.jpg',
              fit: BoxFit.contain, // Ajusta el modo de ajuste según tus necesidades
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
        children: [
          const SizedBox(height: kToolbarHeight),
          const SizedBox(height: kToolbarHeight), // Espacio entre el AppBar y el contenido
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Nombre')),
                  DataColumn(label: Text('Apellido')),
                  DataColumn(label: Text('Fecha')),
                  DataColumn(label: Text('Hora')),
                  DataColumn(label: Text('Mensaje')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('John')),
                    DataCell(Text('Doe')),
                    DataCell(Text('2023-12-01')),
                    DataCell(Text('10:00 AM')),
                    DataCell(Text('Mensaje de ejemplo')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('John')),
                    DataCell(Text('Doe')),
                    DataCell(Text('2023-12-02')),
                    DataCell(Text('12:00 AM')),
                    DataCell(Text('Mensaje de ejemplo')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('John')),
                    DataCell(Text('Doe')),
                    DataCell(Text('2023-12-03')),
                    DataCell(Text('09:00 AM')),
                    DataCell(Text('Mensaje de ejemplo')),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
