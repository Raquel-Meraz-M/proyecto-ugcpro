import 'package:flutter/material.dart';
import 'package:report_application_2/screens/localizacion_screen.dart';
import 'package:report_application_2/screens/login_screen.dart';
import 'package:report_application_2/screens/nosotros_screen.dart';
import 'package:report_application_2/screens/principal_screen.dart';
import 'package:report_application_2/screens/servicios_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(title),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'assets/images/UGCPRO.jpg',
          height: 32,
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
            icon: const Icon(Icons.location_on),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const localizacionScreen(),
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
      );
  }
}
