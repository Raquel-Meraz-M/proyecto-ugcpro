import 'package:flutter/material.dart';

class CitasadminScreen extends StatelessWidget {
  const CitasadminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0), // Cambiar color a azul
        elevation: 0,
        title: const Text('Administrar Citas'),
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
        children: [
          const SizedBox(height: kToolbarHeight),
          const SizedBox(height: kToolbarHeight), // Espacio entre el AppBar y el contenido
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Acción de agregar
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text('Agregar'),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Acción de editar
                    },
                    child: const Text('Editar'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      // Acción de borrar
                      _mostrarVentanaConfirmacionBorrar(context);
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text('Borrar'),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('Nombre')),
                  DataColumn(label: Text('Apellido')),
                  DataColumn(label: Text('Fecha de registro')),
                  DataColumn(label: Text('Hora de registro')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text('John')),
                    DataCell(Text('Doe')),
                    DataCell(Text('2023-12-01')),
                    DataCell(Text('10:00 AM')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2')),
                    DataCell(Text('Jane')),
                    DataCell(Text('Smith')),
                    DataCell(Text('2023-12-02')),
                    DataCell(Text('02:30 PM')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('3')),
                    DataCell(Text('Diego')),
                    DataCell(Text('Gómez')),
                    DataCell(Text('2023-12-02')),
                    DataCell(Text('02:30 PM')),
                  ]),
                  // Agrega más filas según sea necesario
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _mostrarVentanaConfirmacionBorrar(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmar Borrado'),
          content: const Text('¿Estás seguro de que deseas borrar esta cita?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar la ventana de confirmación
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                // Lógica de borrado aquí
                Navigator.of(context).pop(); // Cerrar la ventana de confirmación
              },
              child: const Text('Borrar'),
            ),
          ],
        );
      },
    );
  }
}
