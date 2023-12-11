import 'package:flutter/material.dart';
import 'package:report_application_2/inicio_admin.dart';
import 'package:report_application_2/screens/inicio_usuario.dart';
import 'package:report_application_2/screens/registro_screen.dart'; // Asegúrate de importar la pantalla de registro

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Variables para almacenar el usuario y la contraseña esperados
    const String expectedUser = 'raquel10';
    const String expectedPassword = 'raquel';

    // Controladores para los campos de texto
    final TextEditingController userController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Iniciar Sesión'),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150, // Ajusta la altura según tu diseño
                width: 150, // Ajusta la anchura según tu diseño
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/UGCPRO.jpg'),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: userController,
                decoration: const InputDecoration(
                  labelText: 'Usuario',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Verifica si el usuario y la contraseña son correctos
                  if (userController.text == expectedUser &&
                      passwordController.text == expectedPassword) {
                    // Si son correctos, redirige a la pantalla de inicio de administrador
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const inicioadminScreen(),
                      ),
                    );
                  } else {
                    // Si no son correctos, redirige a la pantalla de inicio regular
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InicioScreen(),
                      ),
                    );
                  }
                },
                child: const Text('Iniciar sesión'),
              ),
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  // Redirige a la pantalla de registro al hacer clic
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
                child: const Text('Aún no tienes una cuenta? Registrarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
