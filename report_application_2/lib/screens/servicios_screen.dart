import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class serviciosScreen extends StatelessWidget {
  const serviciosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Agrega un botón de retroceso en la barra de la aplicación
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_image.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '''
                UGCPRO se especializa en la gestión y reserva de citas, diseñada para proporcionar a los usuarios una experiencia eficiente y sencilla. Utilizamos un avanzado procesamiento de datos para generar suscripciones que permiten a los usuarios registrarse con un solo clic, facilitando la óptima gestión de citas. Con el uso de herramientas de automatización, se centralizan todos los datos relacionados con reservas y citas en una única ubicación accesible, garantizando una experiencia sin complicaciones.

                La estructura optimizada de UGCPRO se centra en simplificar el proceso de reserva para los usuarios, permitiéndoles realizar reservas con tan solo unos pocos clics. Este enfoque busca mejorar la experiencia del usuario, asegurando una gestión eficiente y proporcionando la mejor experiencia posible.

                El proyecto se dedica por completo a ofrecer información precisa sobre citas en diferentes locales, priorizando la creación de una experiencia única y segura para aquellos que optan por reservar citas en lugares específicos. El compromiso principal de UGCPRO es asegurar que todos los clientes encuentren la cita más adecuada para sus necesidades y queden satisfechos con los servicios proporcionados.
                ''',
                textAlign: TextAlign.justify,
                style: GoogleFonts.dongle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0.5,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
